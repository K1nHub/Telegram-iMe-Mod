.class public Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;
.super Ljava/lang/Object;
.source "GiveawayMessageCell.java"


# static fields
.field private static final monthsToEmoticon:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

.field private avatarVisible:[Z

.field private bottomHeight:I

.field private bottomLayout:Landroid/text/StaticLayout;

.field private final chatBgPaint:Landroid/graphics/Paint;

.field private final chatRect:Landroid/graphics/RectF;

.field private final chatTextPaint:Landroid/text/TextPaint;

.field private chatTitleWidths:[F

.field private chatTitles:[Ljava/lang/CharSequence;

.field private clickRect:[Landroid/graphics/Rect;

.field private final clipRectPaint:Landroid/graphics/Paint;

.field private final containerRect:Landroid/graphics/Rect;

.field private final countRect:Landroid/graphics/RectF;

.field private final counterBgPaint:Landroid/graphics/Paint;

.field private counterStr:Ljava/lang/String;

.field private final counterTextBounds:Landroid/graphics/Rect;

.field private final counterTextPaint:Landroid/text/TextPaint;

.field private countriesHeight:I

.field private countriesLayout:Landroid/text/StaticLayout;

.field private final countriesTextPaint:Landroid/text/TextPaint;

.field private diffTextWidth:I

.field private final giftReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isButtonPressed:Z

.field private isContainerPressed:Z

.field private measuredHeight:I

.field private measuredWidth:I

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private needNewRow:[Z

.field private final parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private pressedPos:I

.field private final pressedState:[I

.field private final saveLayerPaint:Landroid/graphics/Paint;

.field private selectorColor:I

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private final textPaint:Landroid/text/TextPaint;

.field private topHeight:I

.field private topLayout:Landroid/text/StaticLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x1

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x18

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 8

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 76
    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    new-array v1, v0, [F

    .line 77
    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    new-array v1, v0, [Z

    .line 78
    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 79
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    .line 82
    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    .line 92
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    .line 93
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    .line 94
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    .line 95
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    .line 96
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    .line 97
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->saveLayerPaint:Landroid/graphics/Paint;

    .line 100
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clipRectPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    .line 102
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    .line 103
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    .line 104
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->containerRect:Landroid/graphics/Rect;

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 105
    fill-array-data v7, :array_0

    iput-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedState:[I

    const/4 v7, -0x1

    .line 110
    iput v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    .line 111
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    .line 112
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 116
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 117
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 119
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-string p1, "fonts/rmedium.ttf"

    .line 120
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 121
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v0, 0xc

    .line 122
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 123
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 124
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 p1, 0xd

    .line 125
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 126
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/16 p1, 0xe

    .line 127
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method private checkArraysLimits(I)V
    .locals 5

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 546
    array-length v1, v0

    .line 547
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 556
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object v3, v2, v1

    .line 557
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 558
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v1

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 559
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    aput-object v3, v2, v1

    .line 560
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v2, v2, v1

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 561
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createImages()V
    .locals 4

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [Lorg/telegram/messenger/ImageReceiver;

    .line 531
    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    new-array v1, v0, [Lorg/telegram/ui/Components/AvatarDrawable;

    .line 532
    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-array v0, v0, [Z

    .line 533
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    const/4 v0, 0x0

    .line 534
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 535
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object v2, v1, v0

    .line 536
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 537
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v0

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 538
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    aput-object v2, v1, v0

    .line 539
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v1, v1, v0

    const/16 v2, 0x12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 540
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setGiftImage(Lorg/telegram/messenger/MessageObject;)V
    .locals 12

    .line 567
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    .line 571
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 573
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkPremiumGiftStickers()V

    return-void

    .line 576
    :cond_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-nez v1, :cond_1

    .line 578
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    :cond_1
    move-object v7, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v7, :cond_8

    .line 581
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->months:I

    .line 582
    sget-object v3, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->monthsToEmoticon:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 583
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 584
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 585
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 586
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    .line 587
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v10, v10, v5

    if-nez v10, :cond_4

    move-object v2, v9

    :cond_5
    if-eqz v2, :cond_3

    :cond_6
    if-eqz v2, :cond_2

    :cond_7
    if-nez v2, :cond_8

    .line 601
    iget-object p1, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 602
    iget-object p1, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_8
    if-eqz v2, :cond_a

    .line 606
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    if-eqz v5, :cond_9

    const/16 p1, 0x200

    .line 608
    invoke-virtual {v5, p1, p1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 610
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v8, 0x1

    const-string v4, "160_160_firstframe"

    const-string v6, "tgs"

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 612
    :cond_a
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    if-nez v7, :cond_b

    const/4 v2, 0x1

    goto :goto_0

    :cond_b
    move v2, v1

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    :goto_1
    return-void
.end method


# virtual methods
.method public checkMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGiveaway()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    move p1, v1

    .line 139
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    array-length v5, v3

    if-ge p1, v5, :cond_3

    .line 140
    aget-object v3, v3, p1

    .line 141
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    .line 143
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_1

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 146
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    .line 147
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->setButtonPressed(Z)V

    return v4

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 151
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->containerRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 152
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    return v4

    .line 155
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 156
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    if-eqz p1, :cond_6

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    invoke-interface {p1, v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressGiveawayChatButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    .line 160
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 161
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->setButtonPressed(Z)V

    .line 162
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    .line 164
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    if-eqz p1, :cond_a

    .line 165
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    .line 166
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletinAbout(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_1

    .line 168
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    goto :goto_1

    .line 170
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 171
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    if-eqz p1, :cond_9

    .line 172
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->setButtonPressed(Z)V

    .line 174
    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    .line 175
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    :cond_a
    :goto_1
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v1, p4

    .line 369
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isGiveaway()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 373
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v10, 0xc

    if-nez v2, :cond_1

    .line 374
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorColor:I

    invoke-static {v2, v10, v10}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 377
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    if-eqz v3, :cond_2

    const v3, 0x3df5c28f    # 0.12f

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    .line 378
    iget v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorColor:I

    const/4 v11, 0x1

    if-eq v3, v2, :cond_3

    .line 379
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorColor:I

    invoke-static {v3, v2, v11}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 382
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 383
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 385
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 386
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 387
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 390
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPreviewInstantText:I

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 391
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v12, 0x4

    .line 399
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v13, p3, v1

    int-to-float v1, v13

    int-to-float v2, v9

    .line 401
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 402
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->containerRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v1, v13, v9, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 404
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->saveLayerPaint:Landroid/graphics/Paint;

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 405
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 407
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v1, v14

    const/16 v1, 0x6a

    .line 408
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 409
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 410
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 411
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    const/4 v6, 0x2

    .line 412
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v14

    sub-float v7, v15, v7

    .line 413
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v10, v3, v16

    int-to-float v10, v10

    div-float/2addr v10, v14

    sub-float v10, v1, v10

    .line 414
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v11, v2, v16

    int-to-float v11, v11

    div-float/2addr v11, v14

    add-float/2addr v11, v15

    .line 415
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    div-float/2addr v6, v14

    add-float/2addr v6, v1

    .line 411
    invoke-virtual {v5, v7, v10, v11, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 417
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    const/16 v6, 0xb

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clipRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5, v7, v6, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 418
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    div-float/2addr v2, v14

    sub-float v6, v15, v2

    int-to-float v3, v3

    div-float/2addr v3, v14

    sub-float v7, v1, v3

    add-float/2addr v2, v15

    add-float/2addr v1, v3

    invoke-virtual {v5, v6, v7, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 424
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 425
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStr:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/16 v1, 0x80

    .line 428
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 429
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v9

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 432
    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->diffTextWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v14

    invoke-virtual {v8, v2, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 433
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 435
    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topHeight:I

    const/4 v9, 0x6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 436
    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topHeight:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x0

    move v11, v1

    .line 439
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    array-length v3, v1

    if-ge v2, v3, :cond_a

    .line 440
    aget-boolean v1, v1, v2

    if-eqz v1, :cond_9

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move v3, v2

    move v1, v10

    .line 446
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    aget v4, v4, v3

    const/16 v16, 0x2a

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 448
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_6

    aget-boolean v4, v4, v3

    if-nez v4, :cond_5

    :cond_6
    div-float/2addr v1, v14

    sub-float v1, v15, v1

    .line 451
    invoke-virtual {v8, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-int v1, v1

    add-int/2addr v1, v13

    move v7, v1

    move/from16 v17, v2

    .line 457
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v17

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 458
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    aget-object v2, v1, v17

    const/4 v3, 0x0

    aget-object v1, v1, v17

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v18, 0x1e

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v6, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    move v12, v7

    move-object/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 459
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    aget v2, v2, v17

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v10, v10, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 460
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 462
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v17

    int-to-float v2, v12

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr v5, v2

    float-to-int v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v11

    invoke-virtual {v1, v12, v11, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 464
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v8, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 465
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-float/2addr v2, v1

    float-to-int v7, v2

    const/4 v1, 0x1

    add-int/lit8 v2, v17, 0x1

    .line 468
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    array-length v5, v3

    if-ge v2, v5, :cond_8

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_8

    aget-boolean v3, v3, v2

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v17, v2

    const/4 v12, 0x4

    goto/16 :goto_3

    .line 472
    :cond_8
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 473
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v10, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 474
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v11, v3

    goto :goto_5

    :cond_9
    const/4 v1, 0x1

    const/16 v4, 0xc

    add-int/lit8 v2, v2, 0x1

    :goto_5
    const/4 v12, 0x4

    goto/16 :goto_2

    .line 480
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_b

    .line 481
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 482
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v14

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 483
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 485
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesHeight:I

    int-to-float v1, v1

    invoke-virtual {v8, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 488
    :cond_b
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 490
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->diffTextWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v14

    invoke-virtual {v8, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 491
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 494
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    if-ltz v1, :cond_c

    .line 495
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 496
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 519
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 523
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 512
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 513
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 503
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 504
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setButtonPressed(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGiveaway()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedState:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMessageContent(Lorg/telegram/messenger/MessageObject;II)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 210
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 211
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    .line 212
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    .line 213
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    .line 214
    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    .line 215
    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGiveaway()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 219
    :cond_0
    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 220
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->createImages()V

    .line 221
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->setGiftImage(Lorg/telegram/messenger/MessageObject;)V

    .line 222
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    .line 223
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->checkArraysLimits(I)V

    const/16 v3, 0x94

    .line 225
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 227
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    const/16 v5, 0x50

    if-eqz v4, :cond_1

    .line 228
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p2, v4

    .line 233
    :goto_0
    sget v5, Lorg/telegram/messenger/R$string;->BoostingGiveawayPrizes:I

    const-string v6, "BoostingGiveawayPrizes"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 234
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f866666    # 1.05f

    invoke-direct {v7, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v2, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v7, "\n"

    .line 236
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 237
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 238
    iget v11, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->quantity:I

    const-string v12, "BoostingGiveawayMsgInfoPlural1"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 239
    invoke-virtual {v9, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 240
    iget v11, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->quantity:I

    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/Object;

    iget v13, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->months:I

    new-array v14, v2, [Ljava/lang/Object;

    const-string v8, "BoldMonths"

    invoke-static {v8, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v2

    const-string v8, "BoostingGiveawayMsgInfoPlural2"

    invoke-static {v8, v11, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 243
    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v8, "\n\n"

    .line 244
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 246
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v8, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v15

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v6, v8, v11, v12, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 248
    sget v8, Lorg/telegram/messenger/R$string;->BoostingGiveawayMsgParticipants:I

    const-string v11, "BoostingGiveawayMsgParticipants"

    invoke-static {v11, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 249
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 250
    new-instance v11, Landroid/text/style/RelativeSizeSpan;

    const v12, 0x3f866666    # 1.05f

    invoke-direct {v11, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v12, v13

    const/4 v14, 0x2

    add-int/2addr v12, v14

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x3

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {v6, v11, v12, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 251
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 253
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->only_new_subscribers:Z

    if-eqz v5, :cond_2

    .line 254
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "BoostingGiveawayMsgNewSubsPlural"

    invoke-static {v9, v5, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 256
    :cond_2
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "BoostingGiveawayMsgAllSubsPlural"

    invoke-static {v9, v5, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 259
    :goto_1
    sget v5, Lorg/telegram/messenger/R$string;->BoostingWinnersDate:I

    const-string v8, "BoostingWinnersDate"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 260
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 261
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    const v9, 0x3f866666    # 1.05f

    invoke-direct {v8, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v13, v8, v2, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 262
    new-instance v5, Ljava/util/Date;

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->until_date:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 263
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/LocaleController;->formatterGiveawayCard:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v9, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-virtual {v13, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 266
    sget v7, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v8, v9, v2

    aput-object v5, v9, v15

    const-string v5, "formatDateAtTime"

    invoke-static {v5, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 268
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v10, v5

    const/4 v11, 0x0

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v16, 0xa

    move-object v5, v6

    move-object v6, v7

    move v7, v4

    move-object/from16 v17, v13

    move v13, v4

    move/from16 v18, v14

    move/from16 v14, v16

    invoke-static/range {v5 .. v14}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    .line 269
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v10, v5

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v14, 0xa

    move-object/from16 v5, v17

    invoke-static/range {v5 .. v14}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    move v5, v2

    move v6, v5

    .line 272
    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    if-ge v5, v7, :cond_3

    int-to-double v6, v6

    .line 273
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v2

    .line 275
    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    if-ge v5, v7, :cond_4

    int-to-double v6, v6

    .line 276
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const/16 v5, 0xb4

    .line 279
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 280
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 283
    :cond_5
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->countries_iso2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v7, ""

    if-lez v5, :cond_8

    .line 284
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->countries_iso2:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 286
    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 287
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 288
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v9, :cond_6

    .line 290
    invoke-virtual {v11, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v12, "\u00a0"

    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 292
    :cond_6
    invoke-virtual {v11, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 293
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 295
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 296
    sget v8, Lorg/telegram/messenger/R$string;->BoostingGiveAwayFromCountries:I

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, ", "

    invoke-static {v10, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    const-string v5, "BoostingGiveAwayFromCountries"

    invoke-static {v5, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 297
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v5, v8, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v16

    .line 298
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v25, 0xa

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v24, v6

    invoke-static/range {v16 .. v25}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    :cond_8
    const/16 v5, 0x26

    .line 303
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v6, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v6, p3

    .line 304
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v4, v5, v4

    .line 305
    iput v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->diffTextWidth:I

    .line 307
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v6, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v6, v8

    int-to-float v3, v3

    div-float v8, v3, v8

    sub-float/2addr v9, v8

    const/16 v10, 0x2a

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v8

    invoke-virtual {v4, v9, v11, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 309
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topHeight:I

    .line 310
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomHeight:I

    .line 311
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_5

    :cond_9
    move v3, v2

    :goto_5
    iput v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesHeight:I

    .line 313
    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    iget v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topHeight:I

    add-int/2addr v4, v8

    iput v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    add-int/2addr v4, v3

    .line 314
    iput v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    .line 315
    iget v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomHeight:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    const/16 v3, 0x80

    .line 316
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    .line 317
    iput v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->quantity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStr:Ljava/lang/String;

    .line 320
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v2, v5, v8}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 322
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 325
    iget v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    const/16 v4, 0x1e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    .line 327
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 329
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 331
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    move v8, v1

    move v5, v2

    .line 335
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_10

    .line 336
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 337
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 340
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    aput-boolean v15, v11, v5

    .line 341
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    const/16 v13, 0xe

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v11, v12, v13, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    .line 342
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    const v14, 0x3f4ccccd    # 0.8f

    mul-float/2addr v14, v6

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v11, v13, v14, v15}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v12, v5

    .line 343
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    aget-object v14, v13, v5

    aget-object v13, v13, v5

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-virtual {v12, v14, v2, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v12

    aput v12, v11, v5

    .line 344
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    aget v11, v11, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    add-float/2addr v8, v11

    if-lez v5, :cond_d

    .line 347
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    const v13, 0x3f666666    # 0.9f

    mul-float/2addr v13, v6

    cmpl-float v13, v8, v13

    if-lez v13, :cond_c

    const/4 v13, 0x1

    goto :goto_8

    :cond_c
    move v13, v2

    :goto_8
    aput-boolean v13, v12, v5

    .line 348
    aget-boolean v12, v12, v5

    if-eqz v12, :cond_e

    .line 350
    iget v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v8, v12

    iput v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    move v8, v11

    goto :goto_9

    .line 353
    :cond_d
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    aput-boolean v2, v11, v5

    .line 355
    :cond_e
    :goto_9
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v11, v11, v5

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 356
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v11, v11, v5

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v12, v12, v5

    invoke-virtual {v11, v9, v12}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v9, v9, v5

    const/16 v11, 0x18

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v1, v1, v12, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_a

    .line 359
    :cond_f
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    aput-boolean v2, v9, v5

    .line 360
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    aput-object v7, v9, v5

    .line 361
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    aput-boolean v2, v9, v5

    .line 362
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    const/16 v13, 0x14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v9, v5

    .line 363
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v9, v9, v5

    invoke-virtual {v9, v11, v12, v7, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    :goto_a
    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x1

    goto/16 :goto_7

    :cond_10
    return-void
.end method
