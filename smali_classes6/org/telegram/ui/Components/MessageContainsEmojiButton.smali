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
    .locals 9
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

    .line 69
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawableBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawableBoundsSet:Z

    const/4 v0, -0x1

    .line 209
    iput v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastWidth:I

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->checkWidth:Z

    const/4 v1, 0x0

    .line 265
    iput v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    .line 70
    iput p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->currentAccount:I

    .line 73
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    const/16 v2, 0xd

    .line 76
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 79
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-le v1, v0, :cond_1

    if-nez p5, :cond_0

    .line 82
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p3, p2, [Ljava/lang/Object;

    const-string p4, "MessageContainsEmojiPacks"

    invoke-static {p4, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p3, p2, [Ljava/lang/Object;

    const-string p4, "MessageContainsReactionsPacks"

    invoke-static {p4, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 86
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    .line 87
    move-object p3, p1

    check-cast p3, Landroid/text/Spannable;

    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class p4, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-interface {p3, p2, p1, p4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/TypefaceSpan;

    :goto_1
    if-eqz p1, :cond_9

    .line 89
    array-length p4, p1

    if-ge p2, p4, :cond_9

    .line 90
    aget-object p4, p1, p2

    invoke-interface {p3, p4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p4

    .line 91
    aget-object p5, p1, p2

    invoke-interface {p3, p5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p5

    .line 92
    aget-object v0, p1, p2

    invoke-interface {p3, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 93
    new-instance v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;)V

    invoke-interface {p3, v0, p4, p5, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_9

    if-nez p5, :cond_2

    .line 98
    sget p5, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPack:I

    const-string v1, "MessageContainsEmojiPack"

    invoke-static {v1, p5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    .line 100
    :cond_2
    sget p5, Lorg/telegram/messenger/R$string;->MessageContainsReactionsPack:I

    const-string v1, "MessageContainsReactionsPack"

    invoke-static {v1, p5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    :goto_2
    const-string v1, "%s"

    .line 102
    invoke-virtual {p5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 103
    array-length v4, v1

    if-gt v4, v0, :cond_3

    .line 104
    iput-object p5, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 108
    :cond_3
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object p4, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p4, :cond_6

    .line 110
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p4

    iget-object p5, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {p4, p5, p2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 111
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p5, :cond_6

    .line 112
    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    move v4, p2

    .line 113
    :goto_3
    iget-object v5, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 114
    iget-object v5, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v7, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 115
    iget-object v5, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move-object v4, v3

    :goto_4
    if-nez v4, :cond_7

    .line 119
    iget-object v5, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 120
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_5

    :cond_6
    move-object p5, v3

    move-object v4, p5

    :cond_7
    :goto_5
    if-eqz p5, :cond_8

    if-eqz v4, :cond_8

    .line 125
    new-instance p3, Landroid/text/SpannableString;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    new-instance p4, Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;

    iget-object v5, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-direct {p4, p0, v4, v5}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 131
    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 126
    invoke-virtual {p3, p4, p2, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 132
    invoke-static {p1, p2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 133
    sget-object p4, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 136
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    new-instance p4, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;

    invoke-direct {p4, p0, v3}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p5

    invoke-virtual {p1, p4, p2, p5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    new-instance p4, Landroid/text/SpannableStringBuilder;

    invoke-direct {p4}, Landroid/text/SpannableStringBuilder;-><init>()V

    aget-object p2, v1, p2

    .line 141
    invoke-virtual {p4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 142
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const/16 p3, 0x20

    .line 143
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 144
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    aget-object p2, v1, v0

    .line 145
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 146
    iput p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    .line 147
    iput-object v3, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_6

    .line 149
    :cond_8
    aget-object p1, v1, p2

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    .line 150
    aget-object p1, v1, v0

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->endText:Ljava/lang/CharSequence;

    .line 151
    new-instance p1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p1, p3}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 152
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iput p2, p1, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey1:I

    .line 153
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iput p2, p1, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey2:I

    const/high16 p2, 0x40800000    # 4.0f

    .line 154
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

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

    .line 344
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private updateLayout(IZ)I
    .locals 23

    move-object/from16 v0, p0

    move/from16 v11, p1

    const/4 v12, 0x0

    if-gtz v11, :cond_0

    return v12

    .line 171
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastMainTextText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastMainTextWidth:I

    if-eq v2, v11, :cond_5

    :cond_1
    if-eqz v1, :cond_3

    .line 173
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v14, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v16

    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v18

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v1

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    .line 174
    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    if-nez v2, :cond_4

    .line 175
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 176
    iget-object v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineMargin:I

    .line 177
    iget-object v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineTop:I

    .line 178
    iget-object v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    float-to-int v1, v1

    .line 179
    iget v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineTop:I

    sub-int v4, v1, v4

    iput v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineHeight:I

    const/16 v4, 0x64

    .line 180
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineMargin:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 181
    iget-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 182
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    .line 184
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    iget v6, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineMargin:I

    iget v7, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineTop:I

    int-to-float v8, v6

    add-float/2addr v8, v4

    float-to-int v4, v8

    invoke-virtual {v5, v6, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    iget-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v4, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 186
    iput-boolean v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawableBoundsSet:Z

    goto :goto_0

    .line 189
    :cond_3
    iput-object v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    .line 190
    iput-boolean v12, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawableBoundsSet:Z

    .line 192
    :cond_4
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastMainTextText:Ljava/lang/CharSequence;

    .line 193
    iput v11, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastMainTextWidth:I

    .line 196
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartText:Ljava/lang/CharSequence;

    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastSecondPartText:Ljava/lang/CharSequence;

    if-ne v1, v2, :cond_6

    iget v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastSecondPartTextWidth:I

    if-eq v2, v11, :cond_8

    :cond_6
    if-eqz v1, :cond_7

    .line 198
    new-instance v13, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    move/from16 v6, p1

    invoke-direct/range {v1 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    goto :goto_1

    .line 200
    :cond_7
    iput-object v3, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    .line 202
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastSecondPartText:Ljava/lang/CharSequence;

    .line 203
    iput v11, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastSecondPartTextWidth:I

    .line 206
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v12

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    if-eqz p2, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_a
    iget v2, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    :goto_3
    mul-float/2addr v1, v2

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    :goto_4
    float-to-int v1, v1

    add-int/2addr v12, v1

    return v12
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 271
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_a

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p1, :cond_a

    .line 273
    iget p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 280
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    move v1, p3

    .line 281
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 282
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 283
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

    .line 287
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 288
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

    .line 295
    :cond_5
    iget p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->currentAccount:I

    invoke-static {p1, p3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 296
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 297
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 299
    new-instance p1, Landroid/text/SpannableString;

    const-string v2, " "

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 300
    new-instance v2, Lorg/telegram/ui/Components/MessageContainsEmojiButton$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$2;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)V

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-virtual {p1, v2, p3, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 309
    new-instance v2, Landroid/text/SpannableString;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    new-instance v5, Lorg/telegram/ui/Components/MessageContainsEmojiButton$3;

    iget-object v6, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-direct {v5, p0, v1, v6}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$3;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 315
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    .line 310
    invoke-virtual {v2, v5, p3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 317
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 318
    new-instance p2, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v1, p2, p3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 320
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 322
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 323
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/16 p2, 0x20

    .line 324
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 325
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->endText:Ljava/lang/CharSequence;

    .line 326
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartText:Ljava/lang/CharSequence;

    .line 327
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    .line 328
    iget p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->updateLayout(IZ)I

    move-result p2

    .line 329
    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_7

    .line 330
    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    if-nez v1, :cond_6

    .line 331
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    .line 333
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 334
    iget-object v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    float-to-int v1, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 336
    :cond_7
    iput-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    .line 339
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    sub-int/2addr p1, p2

    .line 341
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-le p1, p2, :cond_9

    move p1, v3

    goto :goto_3

    :cond_9
    move p1, p3

    :goto_3
    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 342
    iget v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    aput v0, p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    aput p3, p2, v3

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    .line 343
    new-instance p3, Lorg/telegram/ui/Components/MessageContainsEmojiButton$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 351
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    nop

    :cond_a
    :goto_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 369
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 373
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

    .line 360
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 364
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

    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 236
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->mainTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawableBoundsSet:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 240
    iget v3, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsFrom:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingBoundsTo:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 242
    iget v3, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 248
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 250
    iget v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastLineTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->secondPartTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 255
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    .line 256
    iget v2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->loadT:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/16 p2, 0xd

    .line 214
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

    .line 215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 216
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->checkWidth:Z

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastWidth:I

    if-lez v0, :cond_0

    .line 218
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 221
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->lastWidth:I

    .line 222
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    if-gez p2, :cond_1

    move p2, v0

    .line 226
    :cond_1
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->updateLayout(IZ)I

    move-result p2

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 228
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
