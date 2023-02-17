.class Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "ChatMessageCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageAccessibilityNodeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;
    }
.end annotation


# instance fields
.field private linkPath:Landroid/graphics/Path;

.field private rect:Landroid/graphics/Rect;

.field private rectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 18322
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 18343
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    .line 18344
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    .line 18345
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell$1;)V
    .locals 0

    .line 18322
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method private getLinkById(IZ)Landroid/text/style/ClickableSpan;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x1388

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    add-int/lit16 p1, p1, -0xbb8

    .line 19082
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    instance-of p2, p2, Landroid/text/Spannable;

    if-eqz p2, :cond_3

    if-gez p1, :cond_1

    goto :goto_0

    .line 19085
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    check-cast p2, Landroid/text/Spannable;

    .line 19086
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 19087
    array-length v1, p2

    if-gt v1, p1, :cond_2

    return-object v0

    .line 19090
    :cond_2
    aget-object p1, p2, p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    add-int/lit16 p1, p1, -0x7d0

    .line 19093
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of p2, p2, Landroid/text/Spannable;

    if-eqz p2, :cond_7

    if-gez p1, :cond_5

    goto :goto_1

    .line 19096
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast p2, Landroid/text/Spannable;

    .line 19097
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 19098
    array-length v1, p2

    if-gt v1, p1, :cond_6

    return-object v0

    .line 19101
    :cond_6
    aget-object p1, p2, p1

    return-object p1

    :cond_7
    :goto_1
    return-object v0
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 18364
    fill-array-data v3, :array_0

    .line 18365
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v5, -0x1

    const/16 v6, 0xa

    const-string v8, " "

    const-string v11, ", "

    const-string v12, "\n"

    const/16 v13, 0x10

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v1, v5, :cond_47

    .line 18367
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 18368
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 18369
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    if-nez v3, :cond_2a

    .line 18370
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 18371
    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v5, v10, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    if-eqz v5, :cond_0

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v5

    if-nez v5, :cond_0

    .line 18372
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18373
    new-instance v5, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v4, 0x21

    invoke-virtual {v3, v5, v14, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18374
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 18376
    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9200(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 18378
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9300(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v5

    aget-object v5, v5, v4

    if-eqz v5, :cond_2

    .line 18379
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9300(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_1

    move-object v5, v8

    goto :goto_1

    :cond_1
    move-object v5, v12

    .line 18380
    :goto_1
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18384
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 18385
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18387
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9400(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9500(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-eq v4, v15, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9500(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-eq v4, v2, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9500(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 18388
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9600(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-ne v4, v15, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9700(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 18389
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18390
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v5, "AccDescrUploadProgress"

    goto :goto_2

    :cond_6
    const-string v5, "AccDescrDownloadProgress"

    :goto_2
    if-eqz v4, :cond_7

    .line 18392
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrUploadProgress:I

    goto :goto_3

    :cond_7
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrDownloadProgress:I

    :goto_3
    new-array v6, v2, [Ljava/lang/Object;

    .line 18393
    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    iget-wide v9, v10, Lorg/telegram/messenger/MessageObject;->loadedFileSize:J

    invoke-static {v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v14

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9800(Lorg/telegram/ui/Cells/ChatMessageCell;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v15

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18396
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 18397
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18398
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMusicInfo:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v15

    const-string v6, "AccDescrMusicInfo"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18399
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18400
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 18401
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9900(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 18402
    :cond_a
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18403
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18404
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18405
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 18406
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgNotPlayed:I

    const-string v5, "AccDescrMsgNotPlayed"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 18408
    :cond_b
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgPlayed:I

    const-string v5, "AccDescrMsgPlayed"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18411
    :cond_c
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 18412
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18413
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18414
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18416
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10100(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 18417
    sget v4, Lorg/telegram/messenger/R$string;->FinalResults:I

    const-string v5, "FinalResults"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 18419
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v4, :cond_f

    .line 18420
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    if-eqz v4, :cond_e

    .line 18421
    sget v4, Lorg/telegram/messenger/R$string;->QuizPoll:I

    const-string v5, "QuizPoll"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 18423
    :cond_e
    sget v4, Lorg/telegram/messenger/R$string;->AnonymousQuizPoll:I

    const-string v5, "AnonymousQuizPoll"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 18425
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    if-eqz v4, :cond_10

    .line 18426
    sget v4, Lorg/telegram/messenger/R$string;->PublicPoll:I

    const-string v5, "PublicPoll"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 18428
    :cond_10
    sget v4, Lorg/telegram/messenger/R$string;->AnonymousPoll:I

    const-string v5, "AnonymousPoll"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 18431
    :goto_5
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18433
    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 18434
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18435
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getVoiceTranscription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 18437
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 18438
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18439
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18442
    :cond_13
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9400(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 18443
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9500(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_14

    .line 18444
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18445
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18447
    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9600(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9500(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-ne v4, v15, :cond_16

    .line 18448
    :cond_15
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18449
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9400(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18452
    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 18453
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 18454
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18455
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-eqz v4, :cond_17

    .line 18456
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrScheduledDate:I

    new-array v5, v15, [Ljava/lang/Object;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10200(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v14

    const-string v6, "AccDescrScheduledDate"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_8

    .line 18458
    :cond_17
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrSentDate:I

    new-array v5, v15, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lorg/telegram/messenger/R$string;->TodayAt:I

    const-string v10, "TodayAt"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10200(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    const-string v6, "AccDescrSentDate"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18459
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18460
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_18

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgUnread:I

    const-string v5, "AccDescrMsgUnread"

    goto :goto_7

    :cond_18
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgRead:I

    const-string v5, "AccDescrMsgRead"

    :goto_7
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_8

    .line 18462
    :cond_19
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 18463
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18464
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgSending:I

    const-string v5, "AccDescrMsgSending"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18465
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10300(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RadialProgress2;->getProgress()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1c

    .line 18467
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    .line 18469
    :cond_1a
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 18470
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18471
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMsgSendingError:I

    const-string v5, "AccDescrMsgSendingError"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    .line 18474
    :cond_1b
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18475
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrReceivedDate:I

    new-array v5, v15, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lorg/telegram/messenger/R$string;->TodayAt:I

    const-string v10, "TodayAt"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10200(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    const-string v6, "AccDescrReceivedDate"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18477
    :cond_1c
    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-lez v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCommentLayout()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 18478
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18479
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    new-array v5, v14, [Ljava/lang/Object;

    const-string v6, "AccDescrNumberOfReplies"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18481
    :cond_1d
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v4, :cond_27

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz v4, :cond_27

    .line 18482
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, ""

    if-ne v4, v15, :cond_23

    .line 18483
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 18484
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v8, :cond_1e

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    goto :goto_9

    :cond_1e
    move-object v6, v5

    .line 18485
    :goto_9
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    if-ne v8, v15, :cond_22

    .line 18486
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18489
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v15, :cond_1f

    .line 18490
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    if-eqz v4, :cond_1f

    .line 18492
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10500(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 18493
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v4, :cond_20

    .line 18495
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_1f
    const/4 v8, 0x0

    :cond_20
    :goto_a
    if-eqz v8, :cond_21

    .line 18500
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrYouReactedWith:I

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v6, v5, v14

    const-string v6, "AccDescrYouReactedWith"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_d

    .line 18502
    :cond_21
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrReactedWith:I

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v14

    aput-object v6, v8, v15

    const-string v5, "AccDescrReactedWith"

    invoke-static {v5, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_d

    :cond_22
    if-le v8, v15, :cond_27

    .line 18505
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18506
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v6, v5, v14

    const-string v6, "AccDescrNumberOfPeopleReactions"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_d

    .line 18509
    :cond_23
    sget v4, Lorg/telegram/messenger/R$string;->Reactions:I

    const-string v6, "Reactions"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18510
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_26

    .line 18512
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 18513
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v7, v10, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v7, :cond_24

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v7, v10, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    goto :goto_c

    :cond_24
    move-object v7, v5

    .line 18515
    :goto_c
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v4, :cond_25

    .line 18517
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 18521
    :cond_26
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18525
    :cond_27
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->albumMode:Z

    if-nez v5, :cond_28

    .line 18526
    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_28

    .line 18527
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18528
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    new-array v5, v14, [Ljava/lang/Object;

    const-string v6, "AccDescrNumberOfViews"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18530
    :cond_28
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18532
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-virtual {v3, v14, v4, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    .line 18534
    array-length v5, v4

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_29

    aget-object v7, v4, v6

    .line 18535
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 18536
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 18537
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 18539
    new-instance v10, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$1;

    invoke-direct {v10, v0, v7}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider$1;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;Landroid/text/style/CharacterStyle;)V

    const/16 v7, 0x21

    .line 18549
    invoke-virtual {v3, v10, v8, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 18551
    :cond_29
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    .line 18554
    :cond_2a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_2b

    .line 18555
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 18557
    :cond_2b
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18560
    :goto_f
    invoke-virtual {v1, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    const/16 v5, 0x13

    if-lt v3, v5, :cond_2c

    .line 18562
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 18564
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v5

    invoke-static {v5, v15, v14, v15, v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_2c
    const/16 v5, 0x15

    if-lt v3, v5, :cond_33

    .line 18568
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v6, Lorg/telegram/messenger/R$id;->acc_action_msg_options:I

    sget v7, Lorg/telegram/messenger/R$string;->AccActionMessageOptions:I

    const-string v8, "AccActionMessageOptions"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 18569
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10600(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v5

    if-eqz v5, :cond_32

    if-eq v5, v15, :cond_31

    if-eq v5, v2, :cond_30

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2f

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2e

    const/16 v6, 0x64

    if-eq v5, v6, :cond_2e

    .line 18589
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v5, v13, :cond_2d

    .line 18590
    sget v5, Lorg/telegram/messenger/R$string;->CallAgain:I

    const-string v6, "CallAgain"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_10

    :cond_2d
    const/4 v10, 0x0

    goto :goto_10

    .line 18580
    :cond_2e
    sget v5, Lorg/telegram/messenger/R$string;->AccActionOpenFile:I

    const-string v6, "AccActionOpenFile"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_10

    .line 18586
    :cond_2f
    sget v5, Lorg/telegram/messenger/R$string;->AccActionCancelDownload:I

    const-string v6, "AccActionCancelDownload"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_10

    .line 18583
    :cond_30
    sget v5, Lorg/telegram/messenger/R$string;->AccActionDownload:I

    const-string v6, "AccActionDownload"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_10

    .line 18576
    :cond_31
    sget v5, Lorg/telegram/messenger/R$string;->AccActionPause:I

    const-string v6, "AccActionPause"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_10

    .line 18573
    :cond_32
    sget v5, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    const-string v6, "AccActionPlay"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 18593
    :goto_10
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v13, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 18594
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v6, Lorg/telegram/messenger/R$string;->AccActionEnterSelectionMode:I

    const-string v7, "AccActionEnterSelectionMode"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-direct {v5, v7, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 18595
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10700(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v5

    if-ne v5, v2, :cond_34

    .line 18597
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v5, Lorg/telegram/messenger/R$id;->acc_action_small_button:I

    sget v6, Lorg/telegram/messenger/R$string;->AccActionDownload:I

    const-string v7, "AccActionDownload"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_11

    .line 18600
    :cond_33
    invoke-virtual {v1, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v2, 0x20

    .line 18601
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18604
    :cond_34
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_35
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 18605
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 18608
    :cond_36
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10900(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/TranscribeButton;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 18609
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v5, 0x1ed

    invoke-virtual {v1, v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_37
    if-ge v3, v4, :cond_3a

    .line 18614
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    if-eqz v3, :cond_38

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_38

    .line 18615
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 18617
    :cond_38
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_39

    .line 18618
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 18619
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v2, v14, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 18621
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v4, v3, :cond_39

    aget-object v6, v2, v4

    .line 18622
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    add-int/lit16 v7, v5, 0x7d0

    invoke-virtual {v1, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 18626
    :cond_39
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11100(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 18627
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 18628
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v2, v14, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 18630
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    if-ge v4, v3, :cond_3a

    aget-object v6, v2, v4

    .line 18631
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    add-int/lit16 v7, v5, 0xbb8

    invoke-virtual {v1, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 18637
    :cond_3a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11200(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .line 18638
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    add-int/lit16 v5, v3, 0x3e8

    invoke-virtual {v1, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/2addr v3, v15

    goto :goto_14

    .line 18641
    :cond_3b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11300(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3c

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 18642
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1ef

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 18645
    :cond_3c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11500(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    .line 18646
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    add-int/lit16 v5, v3, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/2addr v3, v15

    goto :goto_15

    .line 18650
    :cond_3d
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11600(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 18651
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1ed

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 18654
    :cond_3e
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11700(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11800(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 18655
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1f3

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 18657
    :cond_3f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11900(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 18658
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1f0

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 18660
    :cond_40
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12000(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    if-ne v2, v15, :cond_41

    .line 18661
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1f2

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 18663
    :cond_41
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_42

    const/16 v3, 0x1f1

    .line 18664
    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 18666
    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9300(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v2

    aget-object v2, v2, v14

    if-eqz v2, :cond_44

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9300(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v2

    aget-object v2, v2, v15

    if-eqz v2, :cond_44

    .line 18667
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_43

    .line 18668
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v3, Lorg/telegram/messenger/R$id;->acc_action_open_forwarded_origin:I

    sget v4, Lorg/telegram/messenger/R$string;->AccActionOpenForwardedOrigin:I

    const-string v5, "AccActionOpenForwardedOrigin"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_16

    .line 18670
    :cond_43
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v3, 0x1ee

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 18673
    :cond_44
    :goto_16
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12100(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 18674
    :cond_45
    invoke-virtual {v1, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    :cond_46
    return-object v1

    .line 18678
    :cond_47
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 18679
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 18680
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 18681
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    const/16 v5, 0x28

    const-string v7, "android.widget.ImageButton"

    const/16 v9, 0x1ed

    if-ne v1, v9, :cond_4a

    .line 18684
    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18685
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18686
    sget v2, Lorg/telegram/messenger/R$string;->chat_long_action_translate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18687
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18688
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12200(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12300(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12200(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v8, v5

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12300(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    float-to-int v5, v5

    const/16 v9, 0x20

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 18689
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18690
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 18691
    :cond_48
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18693
    :cond_49
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18694
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18695
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_22

    :cond_4a
    const-string v9, "android.widget.TextView"

    const/16 v10, 0x1388

    if-ne v1, v10, :cond_4e

    .line 18698
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_4b

    const/4 v2, 0x0

    return-object v2

    .line 18701
    :cond_4b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 18702
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18703
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12500(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    float-to-int v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12600(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12500(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12700(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12600(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12800(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v11

    if-eqz v11, :cond_4c

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12800(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    :cond_4c
    int-to-float v6, v6

    add-float/2addr v10, v6

    float-to-int v6, v10

    invoke-virtual {v2, v5, v7, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 18704
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18705
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4d

    .line 18706
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18708
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18709
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18710
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18711
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18712
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 18713
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 18714
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x20

    .line 18715
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto/16 :goto_22

    :cond_4e
    const/16 v10, 0xbb8

    if-lt v1, v10, :cond_53

    .line 18717
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_52

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11100(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v2

    if-nez v2, :cond_4f

    goto/16 :goto_17

    .line 18720
    :cond_4f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 18721
    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object v5

    if-nez v5, :cond_50

    const/4 v6, 0x0

    return-object v6

    .line 18725
    :cond_50
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6, v2, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12900(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/Spannable;Landroid/text/style/CharacterStyle;)[I

    move-result-object v5

    .line 18726
    aget v6, v5, v14

    aget v7, v5, v15

    invoke-interface {v2, v6, v7}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18727
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18728
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11100(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 18730
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11100(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v2

    aget v6, v5, v14

    aget v5, v5, v15

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v5, v7}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 18731
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v15}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 18732
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 18733
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13000(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13100(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 18734
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18735
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_51

    .line 18736
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18738
    :cond_51
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18739
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18741
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18742
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18743
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 18744
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 18745
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x20

    .line 18746
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto/16 :goto_22

    :cond_52
    :goto_17
    const/4 v10, 0x0

    return-object v10

    :cond_53
    const/4 v10, 0x0

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_59

    .line 18748
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-nez v2, :cond_54

    return-object v10

    .line 18751
    :cond_54
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 18752
    invoke-direct {v0, v1, v14}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object v5

    if-nez v5, :cond_55

    return-object v10

    .line 18756
    :cond_55
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6, v2, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12900(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/Spannable;Landroid/text/style/CharacterStyle;)[I

    move-result-object v5

    .line 18757
    aget v6, v5, v14

    aget v7, v5, v15

    invoke-interface {v2, v6, v7}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18758
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18759
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 18760
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 18761
    iget v8, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    aget v10, v5, v14

    if-gt v8, v10, :cond_56

    add-int/2addr v7, v8

    aget v10, v5, v15

    if-lt v7, v10, :cond_56

    .line 18762
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    aget v7, v5, v14

    sub-int/2addr v7, v8

    aget v5, v5, v15

    sub-int/2addr v5, v8

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v5, v8}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 18763
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->linkPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v15}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 18764
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rectF:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v10, v5, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v2, v7, v8, v10, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 18765
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget v5, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    float-to-int v5, v5

    invoke-virtual {v2, v14, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 18766
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13200(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13300(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 18767
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18768
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_57

    .line 18769
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18771
    :cond_57
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18772
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18777
    :cond_58
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18778
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18779
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 18780
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 18781
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x20

    .line 18782
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto/16 :goto_22

    :cond_59
    const/16 v2, 0x3e8

    const-string v9, "android.widget.Button"

    if-lt v1, v2, :cond_5e

    add-int/lit16 v2, v1, -0x3e8

    .line 18785
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11200(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_5a

    const/4 v5, 0x0

    return-object v5

    .line 18788
    :cond_5a
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11200(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .line 18789
    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$3500(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Landroid/text/StaticLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18790
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18791
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18792
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 18793
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18795
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1700(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1600(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v8

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1700(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v9

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1800(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1600(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v10

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1900(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v2

    add-int/2addr v10, v2

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 18797
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 18798
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v2, v5

    goto :goto_19

    .line 18800
    :cond_5b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13500(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$4000(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const/4 v5, 0x1

    goto :goto_18

    :cond_5c
    const/4 v5, 0x7

    :goto_18
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 18802
    :goto_19
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13600(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 18803
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18804
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5d

    .line 18805
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18807
    :cond_5d
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18808
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_22

    :cond_5e
    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_65

    add-int/lit16 v2, v1, -0x1f4

    .line 18811
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11500(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_5f

    const/4 v5, 0x0

    return-object v5

    .line 18814
    :cond_5f
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11500(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    .line 18815
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->access$2600(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Landroid/text/StaticLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 18816
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13700(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 18817
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 18819
    :cond_60
    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->access$2700(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 18820
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->access$2200(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18821
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v6

    if-eqz v6, :cond_63

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v6, :cond_63

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->access$2700(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z

    move-result v6

    if-nez v6, :cond_61

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->access$2800(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 18822
    :cond_61
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->access$2800(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z

    move-result v6

    if-eqz v6, :cond_62

    sget v6, Lorg/telegram/messenger/R$string;->AccDescrQuizCorrectAnswer:I

    const-string v7, "AccDescrQuizCorrectAnswer"

    goto :goto_1a

    :cond_62
    sget v6, Lorg/telegram/messenger/R$string;->AccDescrQuizIncorrectAnswer:I

    const-string v7, "AccDescrQuizIncorrectAnswer"

    :goto_1a
    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18825
    :cond_63
    :goto_1b
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18826
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18827
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18829
    iget v5, v2, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->y:I

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13800(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v6

    add-int/2addr v5, v6

    .line 18830
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13900(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v6

    const/16 v7, 0x4c

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    .line 18831
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget v8, v2, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->x:I

    add-int/2addr v6, v8

    iget v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->height:I

    add-int/2addr v2, v5

    invoke-virtual {v7, v8, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 18832
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18833
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_64

    .line 18834
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18836
    :cond_64
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18837
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18839
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_22

    :cond_65
    const/16 v2, 0x1ef

    if-ne v1, v2, :cond_68

    .line 18841
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18842
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18843
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrQuizExplanation:I

    const-string v5, "AccDescrQuizExplanation"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18844
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18845
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14000(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v6

    const/16 v7, 0x8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    const/16 v8, 0x20

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14000(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v9, v8

    invoke-virtual {v2, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 18846
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18847
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_66

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 18848
    :cond_66
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18850
    :cond_67
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18851
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18852
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_22

    :cond_68
    const/16 v2, 0x1f3

    if-ne v1, v2, :cond_6c

    .line 18854
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18855
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18856
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14100(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 18857
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14100(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18859
    :cond_69
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18860
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11800(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 18861
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18862
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6a

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 18863
    :cond_6a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18865
    :cond_6b
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18866
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18867
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_22

    :cond_6c
    const/16 v2, 0x1f2

    if-ne v1, v2, :cond_70

    .line 18869
    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18870
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18871
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14200(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 18872
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrOpenChat:I

    const-string v6, "AccDescrOpenChat"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 18874
    :cond_6d
    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    const-string v6, "ShareFile"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18876
    :goto_1c
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18877
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14300(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14400(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14300(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v8, v5

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14400(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    float-to-int v5, v5

    const/16 v9, 0x20

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 18878
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18879
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6e

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 18880
    :cond_6e
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18882
    :cond_6f
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18883
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18884
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_22

    :cond_70
    const/16 v2, 0x1f1

    if-ne v1, v2, :cond_75

    .line 18886
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18888
    sget v5, Lorg/telegram/messenger/R$string;->Reply:I

    const-string v6, "Reply"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18889
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18890
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_71

    .line 18891
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 18892
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18894
    :cond_71
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_72

    .line 18895
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 18897
    :cond_72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18898
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18900
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartX:I

    iget v7, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartY:I

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14500(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14600(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v6

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v9, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartY:I

    iget v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->replyHeight:F

    float-to-int v8, v8

    add-int/2addr v9, v8

    invoke-virtual {v2, v6, v7, v5, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 18901
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18902
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_73

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 18903
    :cond_73
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18905
    :cond_74
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18906
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18907
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_22

    :cond_75
    const/16 v2, 0x1ee

    if-ne v1, v2, :cond_7a

    .line 18909
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18911
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9300(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v5

    aget-object v5, v5, v14

    if-eqz v5, :cond_77

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9300(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v5

    aget-object v5, v5, v15

    if-eqz v5, :cond_77

    const/4 v5, 0x0

    const/4 v6, 0x2

    :goto_1d
    if-ge v5, v6, :cond_77

    .line 18913
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9300(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_76

    move-object v7, v8

    goto :goto_1e

    :cond_76
    move-object v7, v12

    .line 18914
    :goto_1e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 18917
    :cond_77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18918
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18920
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14700(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14800(Lorg/telegram/ui/Cells/ChatMessageCell;)[F

    move-result-object v5

    aget v5, v5, v14

    sub-float/2addr v2, v5

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14700(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14800(Lorg/telegram/ui/Cells/ChatMessageCell;)[F

    move-result-object v6

    aget v6, v6, v15

    sub-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    .line 18921
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14900(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15000(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    add-int/2addr v7, v2

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14900(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15100(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 18922
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18923
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_78

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 18924
    :cond_78
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18926
    :cond_79
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18927
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18928
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_22

    :cond_7a
    const/16 v2, 0x1f0

    if-ne v1, v2, :cond_82

    .line 18930
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18931
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18932
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v2

    .line 18934
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-eqz v5, :cond_7d

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v5

    if-nez v5, :cond_7d

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z

    move-result v5

    if-nez v5, :cond_7d

    .line 18935
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->isRepliesChat:Z

    if-eqz v5, :cond_7b

    .line 18936
    sget v2, Lorg/telegram/messenger/R$string;->ViewInChat:I

    const-string v5, "ViewInChat"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_20

    :cond_7b
    if-nez v2, :cond_7c

    .line 18938
    sget v2, Lorg/telegram/messenger/R$string;->LeaveAComment:I

    const-string v5, "LeaveAComment"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_7c
    new-array v5, v14, [Ljava/lang/Object;

    const-string v6, "CommentsCount"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1f
    move-object v10, v2

    goto :goto_20

    .line 18940
    :cond_7d
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->isRepliesChat:Z

    if-nez v5, :cond_7e

    if-lez v2, :cond_7e

    const/4 v5, 0x0

    .line 18941
    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v10

    goto :goto_20

    :cond_7e
    const/4 v5, 0x0

    move-object v10, v5

    :goto_20
    if-eqz v10, :cond_7f

    .line 18944
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18946
    :cond_7f
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18947
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15200(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18948
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18949
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_80

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 18950
    :cond_80
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12400(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18952
    :cond_81
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18953
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18954
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/16 :goto_22

    :cond_82
    const/16 v2, 0x1ed

    if-ne v1, v2, :cond_85

    .line 18956
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18957
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 18958
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v1

    if-eqz v1, :cond_83

    sget v1, Lorg/telegram/messenger/R$string;->AccActionCloseTranscription:I

    const-string v2, "AccActionCloseTranscription"

    goto :goto_21

    :cond_83
    sget v1, Lorg/telegram/messenger/R$string;->AccActionOpenTranscription:I

    const-string v2, "AccActionOpenTranscription"

    :goto_21
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 18959
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18960
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/TranscribeButton;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 18961
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15300(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v2

    float-to-int v2, v2

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15400(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15300(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/TranscribeButton;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TranscribeButton;->width()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15400(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/TranscribeButton;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/TranscribeButton;->height()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 18963
    :cond_84
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18964
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    aget v2, v3, v14

    aget v3, v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18965
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18966
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 18968
    :cond_85
    :goto_22
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 18969
    invoke-virtual {v4, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-object v4

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 18977
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    :cond_0
    const/16 p3, 0x40

    if-ne p2, p3, :cond_1

    .line 18980
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const p3, 0x8000

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15500(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_0

    :cond_1
    const/16 p3, 0x10

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    if-ne p2, p3, :cond_16

    const/16 p2, 0x1ed

    if-ne p1, p2, :cond_2

    .line 18984
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 18985
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressAdditionalSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto/16 :goto_0

    :cond_2
    const/16 p3, 0x1388

    if-ne p1, p3, :cond_3

    .line 18989
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 18990
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    const/4 v1, 0x0

    invoke-interface {p1, p2, p3, v1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FF)V

    goto/16 :goto_0

    :cond_3
    if-lt p1, v1, :cond_4

    .line 18993
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 18995
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p3, v1, p2, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V

    .line 18996
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15500(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_0

    :cond_4
    const/16 p3, 0x7d0

    if-lt p1, p3, :cond_5

    .line 18999
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 19001
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p3, v1, p2, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V

    .line 19002
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15500(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_0

    :cond_5
    const/16 p3, 0x3e8

    if-lt p1, p3, :cond_8

    add-int/lit16 p2, p1, -0x3e8

    .line 19006
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11200(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_6

    return v2

    .line 19009
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11200(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .line 19010
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 19011
    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1200(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 19012
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1200(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    move-result-object p2

    invoke-interface {p3, v1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    .line 19015
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15500(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_0

    :cond_8
    const/16 p3, 0x1f4

    if-lt p1, p3, :cond_b

    add-int/lit16 p2, p1, -0x1f4

    .line 19018
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11500(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_9

    return v2

    .line 19021
    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11500(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    .line 19022
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 19023
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19024
    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->access$1300(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19025
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressVoteButtons(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/ArrayList;III)V

    .line 19027
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15500(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto/16 :goto_0

    :cond_b
    const/16 p3, 0x1ef

    if-ne p1, p3, :cond_c

    .line 19029
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 19030
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressHint(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    goto/16 :goto_0

    :cond_c
    const/16 p3, 0x1f3

    if-ne p1, p3, :cond_d

    .line 19033
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 19034
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15600(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    goto/16 :goto_0

    :cond_d
    const/16 p3, 0x1f2

    if-ne p1, p3, :cond_e

    .line 19037
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 19038
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto/16 :goto_0

    :cond_e
    const/16 p3, 0x1f1

    if-ne p1, p3, :cond_10

    .line 19041
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->isThreadChat:Z

    if-eqz p2, :cond_f

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getReplyTopMsgId()I

    move-result p1

    if-eqz p1, :cond_18

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->hasValidReplyMessageObject()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 19042
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    goto/16 :goto_0

    :cond_10
    const/16 p3, 0x1ee

    if-ne p1, p3, :cond_13

    .line 19045
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 19046
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 19047
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15800(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15900(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)V

    goto/16 :goto_0

    .line 19048
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 19049
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15800(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15900(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v2

    invoke-interface {p1, p2, p3, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FF)V

    goto/16 :goto_0

    .line 19050
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16100(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 19051
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressHiddenForward(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_0

    :cond_13
    const/16 p3, 0x1f0

    if-ne p1, p3, :cond_15

    .line 19055
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 19056
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->isRepliesChat:Z

    if-eqz p2, :cond_14

    .line 19057
    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_0

    .line 19059
    :cond_14
    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressCommentButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_0

    :cond_15
    if-ne p1, p2, :cond_18

    .line 19062
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/TranscribeButton;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 19063
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11000(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/TranscribeButton;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TranscribeButton;->onTap()V

    goto :goto_0

    :cond_16
    const/16 p3, 0x20

    if-ne p2, p3, :cond_18

    if-lt p1, v1, :cond_17

    const/4 v2, 0x1

    .line 19066
    :cond_17
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->getLinkById(IZ)Landroid/text/style/ClickableSpan;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 19068
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$100(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p3, v1, p2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V

    .line 19069
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$MessageAccessibilityNodeProvider;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 p3, 0x2

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15500(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    :cond_18
    :goto_0
    return v0
.end method
