.class Lorg/telegram/ui/Components/SuggestEmojiView$2;
.super Ljava/lang/Object;
.source "SuggestEmojiView.java"

# interfaces
.implements Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SuggestEmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SuggestEmojiView;


# direct methods
.method public static synthetic $r8$lambda$loLhAvI08ETpfM59jHaBphhiPUY(Lorg/telegram/ui/Components/SuggestEmojiView$2;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView$2;->lambda$setAsEmojiStatus$0(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SuggestEmojiView;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$setAsEmojiStatus$0(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$300(Lorg/telegram/ui/Components/SuggestEmojiView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    return-void
.end method


# virtual methods
.method public can()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSchedule()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSetAsStatus(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/Boolean;
    .locals 4

    .line 146
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 153
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public copyEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4

    .line 137
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 138
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 139
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->EmojiCopied:I

    const-string v1, "EmojiCopied"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method public synthetic editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$editAnimatedSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    return-void
.end method

.method public synthetic editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$editMedia(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public getDialogId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public synthetic getQuery(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$getQuery(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic gifAddedOrDeleted()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$gifAddedOrDeleted(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V

    return-void
.end method

.method public isInScheduleMode()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    return v0
.end method

.method public needCopy()Z
    .locals 1

    .line 132
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    return v0
.end method

.method public synthetic needMenu()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needMenu(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic needOpen()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needOpen(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic needRemove()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needRemove(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic needRemoveFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needRemoveFromRecent(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    return p1
.end method

.method public needSend(I)Z
    .locals 2

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 116
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->canSendMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public synthetic openKiklikoReport(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$openKiklikoReport(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
    .locals 0

    return-void
.end method

.method public synthetic remove(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$remove(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    return-void
.end method

.method public synthetic removeFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$removeFromRecent(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public synthetic resetTouch()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$resetTouch(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V

    return-void
.end method

.method public sendEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/ChatActivity;->sendAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic sendGif(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$sendGif(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    return-void
.end method

.method public synthetic sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$sendKiklikoVideo(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public synthetic sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$sendSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZI)V

    return-void
.end method

.method public setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 5

    if-nez p1, :cond_0

    .line 161
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 163
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;-><init>()V

    .line 164
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    .line 165
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    move-object p2, v0

    goto :goto_0

    .line 167
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    .line 168
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    .line 170
    :goto_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_2

    .line 171
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 172
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$300(Lorg/telegram/ui/Components/SuggestEmojiView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    .line 174
    new-instance p2, Lorg/telegram/ui/Components/SuggestEmojiView$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/SuggestEmojiView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView$2;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$200(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    .line 178
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$400(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 179
    iget-object v1, p1, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->RemoveStatusInfo:I

    const-string v3, "RemoveStatusInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p1, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    new-instance v1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$400(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 182
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 183
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p2, 0x5dc

    .line 184
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_3

    .line 186
    :cond_4
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SetAsEmojiStatusInfo:I

    const-string v2, "SetAsEmojiStatusInfo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Undo:I

    const-string v3, "Undo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_5
    :goto_3
    return-void
.end method

.method public synthetic setKiklikoAvatar(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$setKiklikoAvatar(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;)V

    return-void
.end method
