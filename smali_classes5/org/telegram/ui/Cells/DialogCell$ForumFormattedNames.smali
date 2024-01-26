.class Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;
.super Ljava/lang/Object;
.source "DialogCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/DialogCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForumFormattedNames"
.end annotation


# instance fields
.field formattedNames:Ljava/lang/CharSequence;

.field isLoadingState:Z

.field lastMessageId:I

.field lastTopicMessageUnread:Z

.field topMessageTopicEndIndex:I

.field topMessageTopicStartIndex:I


# direct methods
.method public static synthetic $r8$lambda$Z52F2IZozkVxS3l3GB65L3qrQu8(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lambda$formatTopicsNames$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 5549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/DialogCell$1;)V
    .locals 0

    .line 5549
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 5549
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formatTopicsNames(ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method private formatTopicsNames(ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 5559
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    .line 5560
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastMessageId:I

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->isLoadingState:Z

    if-nez v2, :cond_2

    return-void

    .line 5563
    :cond_2
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicStartIndex:I

    .line 5564
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicEndIndex:I

    .line 5565
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    .line 5566
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->isLoadingState:Z

    .line 5567
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastMessageId:I

    .line 5568
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v1, v1, v0

    if-eqz p3, :cond_10

    .line 5570
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 5573
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 5574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5575
    sget-object v2, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames$$ExternalSyntheticLambda0;

    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5576
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-wide/16 v5, 0x0

    const-string v7, " "

    if-eqz p2, :cond_8

    .line 5580
    iget-object v5, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p1, v5, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v5

    .line 5581
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v8, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v8, v9, v5, v6}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5583
    invoke-static {p1, v1, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object p3

    .line 5584
    invoke-virtual {v2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5585
    iget v8, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-lez v8, :cond_3

    .line 5586
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v0

    .line 5588
    :goto_2
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicStartIndex:I

    .line 5589
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicEndIndex:I

    .line 5591
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5592
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    goto :goto_4

    .line 5594
    :cond_4
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-lez p1, :cond_5

    move p1, v3

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    goto :goto_4

    .line 5597
    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    move v8, v0

    .line 5599
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    if-eqz p1, :cond_7

    .line 5600
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5601
    new-instance p1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 p2, 0x3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {v2, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move p1, v3

    goto :goto_5

    :cond_7
    move p1, v0

    goto :goto_5

    :cond_8
    move p1, v0

    move v8, p1

    :goto_5
    move p2, v0

    :goto_6
    const/4 p3, 0x4

    .line 5607
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {p3, v9}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ge p2, p3, :cond_c

    .line 5608
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v9, p3

    cmp-long p3, v9, v5

    if-nez p3, :cond_9

    goto :goto_8

    .line 5612
    :cond_9
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    if-eqz p3, :cond_b

    if-eqz v3, :cond_a

    if-eqz p1, :cond_a

    .line 5614
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    :cond_a
    const-string p3, ", "

    .line 5616
    invoke-virtual {v2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5620
    :cond_b
    :goto_7
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$ForumTopic;

    invoke-static {p3, v1, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object p3

    .line 5621
    invoke-virtual {v2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v3, v0

    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_c
    if-lez v8, :cond_d

    .line 5624
    new-instance p1, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string p2, "fonts/rmedium.ttf"

    .line 5625
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, p3, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5626
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    add-int/lit8 v8, v8, 0x2

    invoke-static {p2, v8}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5624
    invoke-virtual {v2, p1, v0, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5629
    :cond_d
    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formattedNames:Ljava/lang/CharSequence;

    return-void

    .line 5633
    :cond_e
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result p2

    if-nez p2, :cond_f

    .line 5634
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide p2, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->preloadTopics(J)V

    .line 5635
    sget p1, Lorg/telegram/messenger/R$string;->Loading:I

    const-string p2, "Loading"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formattedNames:Ljava/lang/CharSequence;

    .line 5636
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->isLoadingState:Z

    goto :goto_9

    :cond_f
    const-string p1, "no created topics"

    .line 5638
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formattedNames:Ljava/lang/CharSequence;

    :cond_10
    :goto_9
    return-void
.end method

.method private static synthetic lambda$formatTopicsNames$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I
    .locals 0

    .line 5575
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    neg-int p0, p0

    return p0
.end method
