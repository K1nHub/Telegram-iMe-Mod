.class public Lorg/telegram/ui/Components/MessageContainsEmojiButton;
.super Landroid/widget/FrameLayout;
.source "MessageContainsEmojiButton.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;
    }
.end annotation


# instance fields
.field public checkWidth:Z

.field private currentAccount:I

.field private emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private emojiDrawableBounds:Landroid/graphics/Rect;

.field private endText:Ljava/lang/CharSequence;

.field private inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private lastLineHeight:I

.field private lastLineMargin:I

.field private lastLineTop:I

.field private lastMainTextText:Ljava/lang/CharSequence;

.field private lastMainTextWidth:I

.field private lastSecondPartText:Ljava/lang/CharSequence;

.field private lastSecondPartTextWidth:I

.field private lastWidth:I

.field private loadAnimator:Landroid/animation/ValueAnimator;

.field private loadT:F

.field private loadingBoundsFrom:Landroid/graphics/Rect;

.field private loadingBoundsTo:Landroid/graphics/Rect;

.field private loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private loadingDrawableBoundsSet:Z

.field private mainText:Ljava/lang/CharSequence;

.field private mainTextLayout:Landroid/text/StaticLayout;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private secondPartText:Ljava/lang/CharSequence;

.field private secondPartTextLayout:Landroid/text/StaticLayout;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public static synthetic $r8$lambda$Kh_43OCkbG6s41TdcnkWUUX_pZE(Lorg/telegram/ui/Components/MessageContainsEmojiButton;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lambda$didReceivedNotification$0(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputStickerSet;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    .line 69
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawableBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 42
    iput-boolean v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawableBoundsSet:Z

    const/4 v4, -0x1

    .line 207
    iput v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastWidth:I

    const/4 v4, 0x1

    .line 208
    iput-boolean v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->checkWidth:Z

    const/4 v5, 0x0

    .line 263
    iput v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    .line 70
    iput v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->currentAccount:I

    const-string v5, "listSelectorSDK21"

    .line 73
    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const/4 v7, 0x6

    invoke-static {v6, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    const/16 v7, 0xd

    .line 76
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 77
    iget-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    const-string v7, "actionBarDefaultSubmenuItem"

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 79
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x21

    const/4 v8, 0x0

    if-le v6, v4, :cond_1

    if-nez p5, :cond_0

    .line 82
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "MessageContainsEmojiPacks"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "MessageContainsReactionsPacks"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    .line 87
    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    .line 88
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v4, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-interface {v2, v3, v1, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TypefaceSpan;

    :goto_1
    if-eqz v1, :cond_9

    .line 89
    array-length v4, v1

    if-ge v3, v4, :cond_9

    .line 90
    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 91
    aget-object v5, v1, v3

    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 92
    aget-object v6, v1, v3

    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 93
    new-instance v6, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;

    invoke-direct {v6, v0, v8}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;)V

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v4, :cond_9

    if-nez p5, :cond_2

    .line 98
    sget v6, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPack:I

    const-string v9, "MessageContainsEmojiPack"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 100
    :cond_2
    sget v6, Lorg/telegram/messenger/R$string;->MessageContainsReactionsPack:I

    const-string v9, "MessageContainsReactionsPack"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    const-string v9, "%s"

    .line 102
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 103
    array-length v10, v9

    if-gt v10, v4, :cond_3

    .line 104
    iput-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    goto/16 :goto_6

    :cond_3
    move-object/from16 v6, p4

    .line 108
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v6, :cond_6

    .line 110
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    iget-object v10, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v6, v10, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 111
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v10, :cond_6

    .line 112
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    const/4 v11, 0x0

    .line 113
    :goto_3
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 114
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v14, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v16, v12, v14

    if-nez v16, :cond_4

    .line 115
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    move-object v11, v8

    :goto_4
    if-nez v11, :cond_7

    .line 119
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 120
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_5

    :cond_6
    move-object v10, v8

    move-object v11, v10

    :cond_7
    :goto_5
    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    .line 125
    new-instance v2, Landroid/text/SpannableString;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v5, Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;

    iget-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-direct {v5, v0, v11, v6}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 131
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 126
    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 132
    invoke-static {v1, v3, v11}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 133
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 134
    iget-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 136
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v5, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;

    invoke-direct {v5, v0, v8}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    aget-object v3, v9, v3

    .line 141
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 142
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    .line 143
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    aget-object v2, v9, v4

    .line 145
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 146
    iput v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    .line 147
    iput-object v8, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_6

    .line 149
    :cond_8
    aget-object v1, v9, v3

    iput-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    .line 150
    aget-object v1, v9, v4

    iput-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->endText:Ljava/lang/CharSequence;

    .line 151
    new-instance v1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const-string v2, "actionBarDefaultSubmenuBackground"

    .line 152
    iput-object v2, v1, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey1:Ljava/lang/String;

    .line 153
    iput-object v5, v1, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey2:Ljava/lang/String;

    const/high16 v2, 0x40800000    # 4.0f

    .line 154
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    :cond_9
    :goto_6
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)Landroid/graphics/Rect;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawableBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineMargin:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineTop:I

    return p0
.end method

.method private synthetic lambda$didReceivedNotification$0(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 342
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    .line 343
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private updateLayout(IZ)I
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 168
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 169
    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    iget-object v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastMainTextText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastMainTextWidth:I

    if-eq v3, v12, :cond_4

    :cond_0
    if-eqz v2, :cond_2

    .line 171
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v14, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v16

    iget-object v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    .line 172
    iget-object v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    if-nez v3, :cond_3

    .line 173
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 174
    iget-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineMargin:I

    .line 175
    iget-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineTop:I

    .line 176
    iget-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    float-to-int v2, v2

    .line 177
    iget v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineTop:I

    sub-int v5, v2, v5

    iput v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineHeight:I

    const/16 v5, 0x64

    .line 178
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getWidth()I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineMargin:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 179
    iget-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 180
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    .line 182
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    iget v7, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineMargin:I

    iget v8, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineTop:I

    int-to-float v9, v7

    add-float/2addr v9, v5

    float-to-int v5, v9

    invoke-virtual {v6, v7, v8, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 184
    iput-boolean v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawableBoundsSet:Z

    goto :goto_0

    .line 187
    :cond_2
    iput-object v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    .line 188
    iput-boolean v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawableBoundsSet:Z

    .line 190
    :cond_3
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    iput-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastMainTextText:Ljava/lang/CharSequence;

    .line 191
    iput v12, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastMainTextWidth:I

    .line 194
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartText:Ljava/lang/CharSequence;

    iget-object v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastSecondPartText:Ljava/lang/CharSequence;

    if-ne v2, v3, :cond_5

    iget v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastSecondPartTextWidth:I

    if-eq v3, v12, :cond_7

    :cond_5
    if-eqz v2, :cond_6

    .line 196
    new-instance v13, Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v13

    move v7, v12

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    goto :goto_1

    .line 198
    :cond_6
    iput-object v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    .line 200
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartText:Ljava/lang/CharSequence;

    iput-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastSecondPartText:Ljava/lang/CharSequence;

    .line 201
    iput v12, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastSecondPartTextWidth:I

    .line 204
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    if-eqz p2, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_9
    iget v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    :goto_3
    mul-float v2, v2, v3

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    float-to-int v2, v2

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 269
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_a

    .line 270
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p1, :cond_a

    .line 271
    iget p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 278
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    const/4 v1, 0x0

    .line 279
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 280
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 281
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_4

    .line 285
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 286
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_2

    :cond_3
    move-object p2, v0

    move-object v1, p2

    :cond_4
    :goto_2
    if-eqz p2, :cond_a

    if-nez v1, :cond_5

    goto/16 :goto_4

    .line 293
    :cond_5
    iget p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->currentAccount:I

    invoke-static {p1, p3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 294
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 295
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 297
    new-instance p1, Landroid/text/SpannableString;

    const-string v2, " "

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v2, Lorg/telegram/ui/Components/MessageContainsEmojiButton$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$2;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)V

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-virtual {p1, v2, p3, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 307
    new-instance v2, Landroid/text/SpannableString;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 308
    new-instance v5, Lorg/telegram/ui/Components/MessageContainsEmojiButton$3;

    iget-object v6, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-direct {v5, p0, v1, v6}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$3;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 313
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    .line 308
    invoke-virtual {v2, v5, p3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 315
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 316
    new-instance p2, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v1, p2, p3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 318
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 320
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 321
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/16 p2, 0x20

    .line 322
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 323
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->endText:Ljava/lang/CharSequence;

    .line 324
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartText:Ljava/lang/CharSequence;

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    .line 326
    iget p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->updateLayout(IZ)I

    move-result p2

    .line 327
    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_7

    .line 328
    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    if-nez v1, :cond_6

    .line 329
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    .line 331
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 332
    iget-object v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    float-to-int v1, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 334
    :cond_7
    iput-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    .line 337
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    sub-int/2addr p1, p2

    .line 339
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-le p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 340
    iget v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    aput v0, p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    aput p3, p2, v3

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    .line 341
    new-instance p3, Lorg/telegram/ui/Components/MessageContainsEmojiButton$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 351
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    nop

    :cond_a
    :goto_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 367
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 371
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 358
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 362
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 231
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 234
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawableBoundsSet:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 238
    iget v3, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 240
    iget v3, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 246
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 248
    iget v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 253
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    .line 254
    iget v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/16 p2, 0xd

    .line 212
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p0, v0, v2, p2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 213
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 214
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->checkWidth:Z

    if-eqz v0, :cond_0

    .line 215
    iget v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastWidth:I

    if-lez v0, :cond_0

    .line 216
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 219
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastWidth:I

    .line 220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 224
    :cond_1
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->updateLayout(IZ)I

    move-result p2

    .line 225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 226
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
