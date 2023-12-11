.class Lorg/telegram/ui/Components/ChatActivityEnterView$68;
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
.method public static synthetic $r8$lambda$0cOe3VpmNSNvxPc1x9mMS6EqCz8(Lorg/telegram/ui/Components/ChatActivityEnterView$68;[Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->lambda$showKiklikoReportAlert$1([Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3eBo8WYtaYA9Ps7E7G5P3lRQLsA(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->lambda$onCustomEmojiSelected$2(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8BmhhxeQpr0hmyRE3rre0AFfq5Q(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->lambda$onGifSelected$3(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_A0DZLHuF7Qvvu2ttJS6Rg6Y-0(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->lambda$onClearEmojiRecent$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9f5mjQ-6N2qipI5htBS7aRsqto(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->lambda$onKiklikoVideoSelected$0(Ljava/lang/String;ZZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kUt_9-u-2VQ8JA5pN3NYH9yiwjk(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->lambda$onGifSelected$4(Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 9603
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClearEmojiRecent$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 9966
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->clearRecentEmoji()V

    return-void
.end method

.method private synthetic lambda$onCustomEmojiSelected$2(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V
    .locals 4

    .line 9789
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    return-void

    .line 9792
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    .line 9797
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12902(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 9798
    new-instance v2, Landroid/text/SpannableString;

    if-nez p1, :cond_2

    const-string p1, "\ud83d\ude00"

    :cond_2
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    .line 9801
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p3}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    .line 9803
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-direct {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    :goto_0
    if-nez p5, :cond_4

    const/4 p2, 0x1

    .line 9806
    iput-boolean p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fromEmojiKeyboard:Z

    .line 9808
    :cond_4
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 9809
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {v2, p1, v1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9810
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9811
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

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

    .line 9813
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9815
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12902(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    return-void

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12902(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 9816
    throw p1
.end method

.method private synthetic lambda$onGifSelected$3(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    .line 9890
    invoke-virtual/range {p0 .. p7}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onGifSelected$4(Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p5

    .line 9900
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_1

    .line 9901
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 9902
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 9904
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v13, v14, v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    .line 9906
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    const/4 v12, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_2
    move-object v8, v12

    .line 9907
    :goto_0
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v16, 0x3e8

    if-eqz v2, :cond_3

    .line 9908
    move-object v13, v1

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    .line 9909
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v18, 0x0

    move-object v2, v13

    move-object/from16 v3, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v19, v13

    move/from16 v13, v18

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual/range {v1 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZIZLjava/lang/Object;Ljava/lang/String;)V

    .line 9910
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v16

    long-to-int v2, v2

    move-object/from16 v3, v19

    const/4 v15, 0x1

    invoke-virtual {v1, v3, v2, v15}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 9911
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9912
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object/from16 v14, p5

    invoke-virtual {v1, v14, v3}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v32, v15

    move v15, v14

    move-object/from16 v14, v32

    .line 9914
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_6

    .line 9915
    check-cast v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 9917
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_4

    .line 9918
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v16

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4, v13}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 9919
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9920
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v14, v3}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 9924
    :cond_4
    move-object v2, v14

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 9926
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9927
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query_id"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "force_gif"

    const-string v4, "1"

    .line 9929
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_5

    .line 9932
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v19

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v20

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v23

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v25

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v26

    const/16 v27, 0x0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v28

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v29, p3

    move/from16 v30, p4

    move-object/from16 v31, p6

    invoke-static/range {v19 .. v31}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZILjava/lang/String;)V

    goto :goto_1

    .line 9934
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, v16

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual/range {v1 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZIZLjava/lang/Object;Ljava/lang/String;)V

    .line 9936
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 9937
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 9938
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    .line 9939
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 9942
    :cond_6
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 9943
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    const/4 v5, 0x0

    invoke-interface {v1, v5, v2, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onKiklikoVideoSelected$0(Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0

    .line 9629
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->onKiklikoVideoSelected(Ljava/lang/String;ZZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showKiklikoReportAlert$1([Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback1;Landroid/content/DialogInterface;I)V
    .locals 6

    .line 9691
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 9694
    :cond_0
    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_1

    .line 9695
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Components/ChatActivityEnterView$68$1;

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    move-object v0, p3

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$68$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 9712
    :cond_1
    aget-object p1, p1, p4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 9713
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

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

    .line 10037
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

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

    .line 9721
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9722
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersAlert;->dismiss()V

    .line 9723
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16902(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 9725
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    return-void
.end method

.method public editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 2

    .line 9730
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9731
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersAlert;->dismiss()V

    .line 9732
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16902(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 9734
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public getDialogId()J
    .locals 2

    .line 10047
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgressToSearchOpened()F
    .locals 1

    .line 10088
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    return v0
.end method

.method public getThreadId()I
    .locals 1

    .line 10052
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    return v0
.end method

.method public invalidateEnterView()V
    .locals 1

    .line 10083
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 10032
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    return v0
.end method

.method public isInScheduleMode()Z
    .locals 1

    .line 10042
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

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

    .line 10027
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStoryReply()Z
    .locals 1

    .line 9744
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserSelf()Z
    .locals 4

    .line 9753
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimatedEmojiUnlockClick()V
    .locals 4

    .line 9822
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9824
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 9826
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    if-eqz v0, :cond_1

    .line 9828
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 9830
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :goto_0
    return-void
.end method

.method public onBackspace()Z
    .locals 4

    .line 9758
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9761
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public onClearEmojiRecent()V
    .locals 3

    .line 9960
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9963
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 9964
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiTitle:I

    const-string v2, "ClearRecentEmojiTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 9965
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiText:I

    const-string v2, "ClearRecentEmojiText"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 9966
    sget v1, Lorg/telegram/messenger/R$string;->ClearForAll:I

    const-string v2, "ClearButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$68;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 9967
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 9968
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

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

    .line 9788
    new-instance v7, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-wide v4, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4

    .line 9767
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    return-void

    .line 9770
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    .line 9775
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12902(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 9776
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 9777
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9778
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 9779
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

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

    .line 9781
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9783
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12902(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    return-void

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12902(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 9784
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

    .line 9869
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9870
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 11

    move-object v8, p0

    if-eqz p6, :cond_0

    .line 9878
    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif;

    const-string v1, "scheduled"

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 9880
    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif;

    const-string v1, "silent"

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    goto :goto_0

    .line 9882
    :cond_1
    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 9885
    :goto_0
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    if-eqz v0, :cond_2

    .line 9886
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->showQuoteMessageUpdate()V

    return-void

    .line 9889
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p6, :cond_4

    :cond_3
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p7, :cond_5

    .line 9890
    :cond_4
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v6

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v9

    new-instance v7, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    move-object p1, v6

    move-wide p2, v9

    move-object p4, v7

    move-object/from16 p5, v0

    move-object/from16 p6, v1

    invoke-static/range {p1 .. p6}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_2

    .line 9892
    :cond_5
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 9893
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 9894
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz p1, :cond_6

    move-object v2, p1

    goto :goto_1

    :cond_6
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    :goto_1
    iget-object v3, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V

    :cond_7
    return-void

    .line 9898
    :cond_8
    new-instance v9, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda2;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;Ljava/lang/String;)V

    .line 9946
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showConfirmAlert(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 9947
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :cond_9
    :goto_2
    return-void
.end method

.method public onKiklikoVideoSelected(Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p4

    .line 9616
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v14, :cond_1

    .line 9620
    new-instance v1, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendClip;

    const-string v2, "gif"

    invoke-direct {v1, v2}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendClip;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_2

    .line 9622
    new-instance v1, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendClip;

    const-string v2, "scheduled"

    invoke-direct {v1, v2}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendClip;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    goto :goto_0

    :cond_2
    if-nez v15, :cond_3

    .line 9624
    new-instance v1, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendClip;

    const-string v2, "silent"

    invoke-direct {v1, v2}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendClip;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    goto :goto_0

    .line 9626
    :cond_3
    new-instance v1, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendClip;

    const-string v2, "default"

    invoke-direct {v1, v2}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendClip;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 9628
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->isInScheduleMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v11, :cond_5

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v12, 0x1

    invoke-static {v1, v12, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p5, :cond_6

    .line 9629
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    new-instance v5, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v13, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Ljava/lang/String;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_4

    .line 9631
    :cond_6
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

    move v15, v12

    move-wide/from16 v11, v17

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 9634
    invoke-static {v13, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    const/4 v2, 0x3

    .line 9635
    aget v2, v1, v2

    const/4 v3, 0x7

    .line 9636
    aget v3, v1, v3

    .line 9637
    aget v4, v1, v15

    const/4 v5, 0x2

    .line 9638
    aget v5, v1, v5

    const/4 v6, 0x4

    .line 9639
    aget v6, v1, v6

    int-to-long v7, v2

    const-wide/16 v9, 0x8

    .line 9640
    div-long/2addr v7, v9

    int-to-long v9, v6

    mul-long/2addr v7, v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    if-eqz v14, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_7
    const/4 v2, 0x5

    .line 9641
    aget v1, v1, v2

    int-to-long v1, v1

    .line 9643
    :goto_1
    new-instance v6, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v6}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    if-eqz v14, :cond_8

    const/16 v17, -0x1

    goto :goto_2

    .line 9644
    :cond_8
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MediaController;->getVideoBitrate(Ljava/lang/String;)I

    move-result v17

    :goto_2
    move/from16 v15, v17

    iput v15, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/high16 v15, 0x3f800000    # 1.0f

    .line 9645
    iput v15, v6, Lorg/telegram/messenger/VideoEditedInfo;->end:F

    const-wide/16 v11, -0x1

    .line 9646
    iput-wide v11, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    iput-wide v11, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 9647
    iput-wide v9, v6, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    add-long/2addr v1, v7

    .line 9648
    iput-wide v1, v6, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    const-wide/32 v7, 0x8000

    .line 9649
    div-long v7, v1, v7

    const-wide/16 v11, 0x10

    mul-long/2addr v7, v11

    add-long/2addr v1, v7

    iput-wide v1, v6, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 9650
    iput v3, v6, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    const-wide/16 v1, 0x3e8

    mul-long/2addr v9, v1

    .line 9651
    iput-wide v9, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    .line 9652
    iput v4, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iput v4, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 9653
    iput v5, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iput v5, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 9654
    iput-object v13, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 9655
    iput-boolean v14, v6, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 9657
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    const/4 v7, 0x0

    move-object/from16 v2, v16

    move-object v3, v6

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    .line 9658
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 9659
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    .line 9661
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 9662
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 9663
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    .line 9664
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 9666
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v1, v2, v3, v4, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public onSearchOpenClose(I)V
    .locals 3

    .line 10016
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    if-eqz p1, :cond_1

    .line 10018
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, v1, v1, v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZZ)V

    .line 10020
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 10021
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkStickresExpandHeight()V

    :cond_2
    return-void
.end method

.method public onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 8

    .line 9973
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9974
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersAlert;->getLayout()Lorg/telegram/ui/Components/TrendingStickersLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->showStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void

    .line 9977
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9979
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    .line 9981
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 9985
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 9986
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 9987
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    :cond_3
    move-object v4, p2

    .line 9989
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v1, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_4
    :goto_0
    return-void
.end method

.method public onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZILjava/lang/String;)V
    .locals 13

    move-object v0, p0

    .line 9836
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9837
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TrendingStickersAlert;->dismiss()V

    .line 9838
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16902(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 9840
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->isInScheduleMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9841
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9842
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz p1, :cond_1

    move-object v3, p1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V

    :cond_2
    return-void

    .line 9846
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9847
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 9848
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 9849
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(ZJ)V

    .line 9850
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 9852
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v3, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    .line 9854
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v9, 0x0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZILjava/lang/String;)V

    .line 9855
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9856
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

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

    .line 9994
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

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

    .line 9999
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

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

    .line 10004
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10005
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10006
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    .line 10008
    :cond_0
    new-instance v0, Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity;-><init>(J)V

    .line 10009
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/GroupStickersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 10010
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public onStickersSettingsClick()V
    .locals 4

    .line 9862
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9863
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

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

    .line 9954
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onStickersTab(Z)V

    .line 9955
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setKiklikoAvatar(Ljava/lang/String;)V
    .locals 1

    .line 9739
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setKiklikoAvatar(Ljava/lang/String;)V

    return-void
.end method

.method public showKiklikoReportAlert(Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9672
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 9675
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    .line 9676
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 9677
    sget v0, Lorg/telegram/messenger/R$string;->ReportChat:I

    const-string v1, "ReportChat"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 9678
    sget v3, Lorg/telegram/messenger/R$string;->ReportChatViolence:I

    const-string v4, "ReportChatViolence"

    .line 9679
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget v3, Lorg/telegram/messenger/R$string;->ReportChatChild:I

    const-string v5, "ReportChatChild"

    .line 9680
    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget v3, Lorg/telegram/messenger/R$string;->ReportChatPornography:I

    const-string v5, "ReportChatPornography"

    .line 9681
    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    sget v3, Lorg/telegram/messenger/R$string;->ReportChatOther:I

    const-string v6, "ReportChatOther"

    .line 9682
    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v0, v0, [I

    .line 9684
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_report_violence:I

    aput v3, v0, v4

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    aput v3, v0, v2

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_report_xxx:I

    aput v2, v0, v5

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_report_other:I

    aput v2, v0, v6

    .line 9690
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$68$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$68;[Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 9716
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
    .locals 9

    .line 10057
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10059
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 10062
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v8, Lorg/telegram/ui/Components/ChatActivityEnterView$68$2;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$68$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16902(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 10074
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10075
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTrendingStickersShowed(Z)V

    .line 10077
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_2
    return-void
.end method
