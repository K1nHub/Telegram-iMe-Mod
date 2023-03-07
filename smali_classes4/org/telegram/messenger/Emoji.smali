.class public Lorg/telegram/messenger/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/Emoji$EmojiSpan;,
        Lorg/telegram/messenger/Emoji$EmojiSpanRange;,
        Lorg/telegram/messenger/Emoji$DrawableInfo;,
        Lorg/telegram/messenger/Emoji$EmojiDrawable;
    }
.end annotation


# static fields
.field private static DEFAULT_RECENT:[Ljava/lang/String; = null

.field private static final MAX_RECENT_EMOJI_COUNT:I = 0x30

.field private static bigImgSize:I

.field private static drawImgSize:I

.field private static emojiBmp:[[Landroid/graphics/Bitmap;

.field public static emojiColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static emojiCounts:[I

.field public static emojiDrawingUseAlpha:Z

.field public static emojiDrawingYOffset:F

.field public static emojiUseHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static inited:Z

.field private static invalidateUiRunnable:Ljava/lang/Runnable;

.field private static loadingEmoji:[[Z

.field private static placeholderPaint:Landroid/graphics/Paint;

.field public static recentEmoji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static recentEmojiLoaded:Z

.field private static rects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/messenger/Emoji$DrawableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$aHu52wsq2h_5jd-0AMjrS2uE9LU(BS)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/Emoji;->lambda$loadEmoji$1(BS)V

    return-void
.end method

.method public static synthetic $r8$lambda$fUgiiB--cGKG7t1AnnkIzP_HEo4(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/Emoji;->lambda$sortEmoji$2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jetPe9LKmqTb2VDJvKz-A7BWYlM()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/Emoji;->lambda$static$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 39

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lorg/telegram/messenger/Emoji;->inited:Z

    const/16 v1, 0x8

    new-array v2, v1, [I

    .line 46
    sget-object v3, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v4, v3, v0

    array-length v4, v4

    aput v4, v2, v0

    const/4 v4, 0x1

    aget-object v5, v3, v4

    array-length v5, v5

    aput v5, v2, v4

    const/4 v5, 0x2

    aget-object v6, v3, v5

    array-length v6, v6

    aput v6, v2, v5

    const/4 v5, 0x3

    aget-object v6, v3, v5

    array-length v6, v6

    aput v6, v2, v5

    const/4 v5, 0x4

    aget-object v6, v3, v5

    array-length v6, v6

    aput v6, v2, v5

    const/4 v5, 0x5

    aget-object v6, v3, v5

    array-length v6, v6

    aput v6, v2, v5

    const/4 v5, 0x6

    aget-object v6, v3, v5

    array-length v6, v6

    aput v6, v2, v5

    const/4 v5, 0x7

    aget-object v3, v3, v5

    array-length v3, v3

    aput v3, v2, v5

    sput-object v2, Lorg/telegram/messenger/Emoji;->emojiCounts:[I

    new-array v2, v1, [[Landroid/graphics/Bitmap;

    .line 56
    sput-object v2, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    new-array v1, v1, [[Z

    .line 57
    sput-object v1, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    .line 63
    sget-object v1, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda1;

    sput-object v1, Lorg/telegram/messenger/Emoji;->invalidateUiRunnable:Ljava/lang/Runnable;

    .line 65
    sput-boolean v4, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    const-string/jumbo v5, "\ud83d\ude02"

    const-string/jumbo v6, "\ud83d\ude18"

    const-string v7, "\u2764"

    const-string/jumbo v8, "\ud83d\ude0d"

    const-string/jumbo v9, "\ud83d\ude0a"

    const-string/jumbo v10, "\ud83d\ude01"

    const-string v11, "\ud83d\udc4d"

    const-string v12, "\u263a"

    const-string/jumbo v13, "\ud83d\ude14"

    const-string/jumbo v14, "\ud83d\ude04"

    const-string/jumbo v15, "\ud83d\ude2d"

    const-string v16, "\ud83d\udc8b"

    const-string/jumbo v17, "\ud83d\ude12"

    const-string/jumbo v18, "\ud83d\ude33"

    const-string/jumbo v19, "\ud83d\ude1c"

    const-string/jumbo v20, "\ud83d\ude48"

    const-string/jumbo v21, "\ud83d\ude09"

    const-string/jumbo v22, "\ud83d\ude03"

    const-string/jumbo v23, "\ud83d\ude22"

    const-string/jumbo v24, "\ud83d\ude1d"

    const-string/jumbo v25, "\ud83d\ude31"

    const-string/jumbo v26, "\ud83d\ude21"

    const-string/jumbo v27, "\ud83d\ude0f"

    const-string/jumbo v28, "\ud83d\ude1e"

    const-string/jumbo v29, "\ud83d\ude05"

    const-string/jumbo v30, "\ud83d\ude1a"

    const-string/jumbo v31, "\ud83d\ude4a"

    const-string/jumbo v32, "\ud83d\ude0c"

    const-string/jumbo v33, "\ud83d\ude00"

    const-string/jumbo v34, "\ud83d\ude0b"

    const-string/jumbo v35, "\ud83d\ude06"

    const-string v36, "\ud83d\udc4c"

    const-string/jumbo v37, "\ud83d\ude10"

    const-string/jumbo v38, "\ud83d\ude15"

    .line 67
    filled-new-array/range {v5 .. v38}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/Emoji;->DEFAULT_RECENT:[Ljava/lang/String;

    const/16 v1, 0x14

    .line 79
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    .line 80
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    const/4 v1, 0x0

    .line 81
    :goto_1
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 82
    sget-object v3, Lorg/telegram/messenger/Emoji;->emojiCounts:[I

    aget v4, v3, v1

    new-array v4, v4, [Landroid/graphics/Bitmap;

    aput-object v4, v2, v1

    .line 83
    sget-object v2, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    aget v3, v3, v1

    new-array v3, v3, [Z

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 86
    :goto_2
    sget-object v2, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 88
    :goto_3
    sget-object v3, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v4, v3, v1

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 89
    sget-object v4, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    new-instance v5, Lorg/telegram/messenger/Emoji$DrawableInfo;

    int-to-byte v6, v1

    int-to-short v7, v2

    invoke-direct {v5, v6, v7, v2}, Lorg/telegram/messenger/Emoji$DrawableInfo;-><init>(BSI)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    :cond_3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 39
    sget v0, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 39
    sget v0, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    return v0
.end method

.method static synthetic access$300(BS)V
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lorg/telegram/messenger/Emoji;->loadEmoji(BS)V

    return-void
.end method

.method static synthetic access$400()Landroid/graphics/Paint;
    .locals 1

    .line 39
    sget-object v0, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$500()[[Landroid/graphics/Bitmap;
    .locals 1

    .line 39
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static addRecentEmoji(Ljava/lang/String;)V
    .locals 3

    .line 663
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 665
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 667
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    .line 668
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 669
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_1
    sget-object v1, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static clearRecentEmoji()V
    .locals 3

    .line 724
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 725
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filled_default"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 726
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 727
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 728
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    return-void
.end method

.method public static fixEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 163
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string/jumbo v4, "\ufe0f"

    const v5, 0xd83c

    if-lt v3, v5, :cond_3

    const v6, 0xd83e

    if-gt v3, v6, :cond_3

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 166
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xde2f

    if-eq v5, v6, :cond_1

    const v6, 0xdc04

    if-eq v5, v6, :cond_1

    const v6, 0xde1a

    if-eq v5, v6, :cond_1

    const v6, 0xdd7f

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_3

    .line 168
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/16 v5, 0x20e3

    if-ne v3, v5, :cond_4

    return-object p0

    :cond_4
    const/16 v5, 0x203c

    if-lt v3, v5, :cond_5

    const/16 v5, 0x3299

    if-gt v3, v5, :cond_5

    .line 180
    sget-object v5, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-object p0
.end method

.method public static fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 348
    invoke-static {p0, v1}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;

    const/4 p0, 0x0

    .line 349
    aget v1, v1, p0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getDrawableInfo(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$DrawableInfo;
    .locals 2

    .line 201
    sget-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$DrawableInfo;

    if-nez v0, :cond_0

    .line 203
    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiAliasMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    .line 205
    sget-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/telegram/messenger/Emoji$DrawableInfo;

    :cond_0
    return-object v0
.end method

.method public static getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 226
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiAliasMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    .line 230
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 236
    :cond_1
    sget p0, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p0, 0x1

    .line 237
    invoke-static {v0, p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->access$002(Lorg/telegram/messenger/Emoji$EmojiDrawable;Z)Z

    return-object v0
.end method

.method public static getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;
    .locals 2

    .line 191
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getDrawableInfo(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$DrawableInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 195
    :cond_0
    new-instance v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;-><init>(Lorg/telegram/messenger/Emoji$DrawableInfo;)V

    .line 196
    sget p0, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method private static inArray(C[C)Z
    .locals 4

    .line 327
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p1, v2

    if-ne v3, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static invalidateAll(Landroid/view/View;)V
    .locals 2

    .line 149
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 150
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->invalidateAll(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public static isValidEmoji(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$DrawableInfo;

    if-nez v0, :cond_1

    .line 217
    sget-object v2, Lorg/telegram/messenger/EmojiData;->emojiAliasMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    .line 219
    sget-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/telegram/messenger/Emoji$DrawableInfo;

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static synthetic lambda$loadEmoji$1(BS)V
    .locals 1

    .line 110
    invoke-static {p0, p1}, Lorg/telegram/messenger/Emoji;->loadEmojiInternal(BS)V

    .line 111
    sget-object v0, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    aget-object p0, v0, p0

    const/4 v0, 0x0

    aput-boolean v0, p0, p1

    return-void
.end method

.method private static synthetic lambda$sortEmoji$2(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 689
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 690
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1

    .line 697
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_2

    const/4 p0, -0x1

    return p0

    .line 699
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private static synthetic lambda$static$0()V
    .locals 3

    .line 63
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static loadEmoji(BS)V
    .locals 2

    .line 104
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    aget-object v1, v0, p0

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    return-void

    .line 108
    :cond_0
    aget-object v0, v0, p0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 109
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda0;-><init>(BS)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static loadEmojiInternal(BS)V
    .locals 10

    .line 119
    :try_start_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    const/4 v3, 0x1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    .line 127
    :try_start_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emoji/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d_%d.png"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v2, v9

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v6, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 128
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 129
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 130
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 131
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 134
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 138
    :goto_1
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    aget-object p0, v0, p0

    aput-object v1, p0, p1

    .line 139
    sget-object p0, Lorg/telegram/messenger/Emoji;->invalidateUiRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 140
    sget-object p0, Lorg/telegram/messenger/Emoji;->invalidateUiRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 142
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    const-string p1, "Error loading emoji"

    .line 143
    invoke-static {p1, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public static loadRecentEmoji()V
    .locals 18

    const-string v0, "filled_default"

    const-string v1, "="

    const-string v2, ","

    const-string v3, ""

    const-string v4, "emojis"

    .line 732
    sget-boolean v5, Lorg/telegram/messenger/Emoji;->recentEmojiLoaded:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x1

    .line 735
    sput-boolean v5, Lorg/telegram/messenger/Emoji;->recentEmojiLoaded:Z

    .line 736
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v6

    const/4 v7, 0x0

    .line 740
    :try_start_0
    sget-object v8, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 741
    invoke-interface {v6, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 742
    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 743
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 744
    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 745
    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 746
    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 747
    aget-object v12, v11, v7

    invoke-static {v12}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 748
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v15, v5, :cond_2

    long-to-int v5, v12

    int-to-char v5, v5

    .line 751
    invoke-virtual {v14, v7, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    shr-long/2addr v12, v5

    const-wide/16 v16, 0x0

    cmp-long v5, v12, v16

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 757
    :cond_2
    :goto_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 758
    sget-object v5, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v11, v11, v13

    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    goto :goto_0

    .line 762
    :cond_4
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 763
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    goto :goto_4

    :cond_5
    const-string v4, "emojis2"

    .line 765
    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 766
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 767
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 768
    array-length v5, v4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_6

    aget-object v9, v4, v8

    .line 769
    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 770
    sget-object v10, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    aget-object v11, v9, v7

    const/4 v12, 0x1

    aget-object v9, v9, v12

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 774
    :cond_6
    :goto_4
    sget-object v4, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 775
    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x0

    .line 776
    :goto_5
    sget-object v5, Lorg/telegram/messenger/Emoji;->DEFAULT_RECENT:[Ljava/lang/String;

    array-length v8, v5

    if-ge v4, v8, :cond_7

    .line 777
    sget-object v8, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    aget-object v9, v5, v4

    array-length v5, v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 779
    :cond_7
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 780
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    .line 783
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 785
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_6
    :try_start_1
    const-string v0, "color"

    .line 789
    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 790
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 791
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 792
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_9

    .line 793
    aget-object v3, v0, v2

    .line 794
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 795
    sget-object v4, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    aget-object v5, v3, v7

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 799
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/Emoji$EmojiSpanRange;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 353
    invoke-static {p0, v0}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/Emoji$EmojiSpanRange;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_22

    .line 358
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_f

    .line 366
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-wide/16 v5, 0x0

    move-object/from16 v9, p1

    move-wide v11, v5

    const/4 v10, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v10, v4, :cond_21

    .line 373
    :try_start_0
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const v3, 0xd83c

    const/4 v7, 0x1

    if-lt v8, v3, :cond_2

    const v3, 0xd83e

    if-le v8, v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, -0x1

    goto :goto_3

    :cond_2
    :goto_2
    cmp-long v3, v11, v5

    if-eqz v3, :cond_5

    const-wide v17, -0x100000000L

    and-long v17, v11, v17

    cmp-long v19, v17, v5

    if-nez v19, :cond_5

    const-wide/32 v17, 0xffff

    and-long v17, v11, v17

    const-wide/32 v19, 0xd83c

    cmp-long v21, v17, v19

    if-nez v21, :cond_5

    const v5, 0xdde6

    if-lt v8, v5, :cond_5

    const v5, 0xddff

    if-gt v8, v5, :cond_5

    goto :goto_1

    :goto_3
    if-ne v13, v3, :cond_3

    move v13, v10

    .line 379
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x10

    shl-long/2addr v11, v5

    int-to-long v5, v8

    or-long/2addr v11, v5

    :cond_4
    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 383
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    const/16 v5, 0x2640

    if-eq v8, v5, :cond_6

    const/16 v5, 0x2642

    if-eq v8, v5, :cond_6

    const/16 v5, 0x2695

    if-ne v8, v5, :cond_7

    .line 384
    :cond_6
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const-wide/16 v11, 0x0

    :goto_6
    const/16 v16, 0x1

    goto/16 :goto_9

    :cond_7
    if-lez v3, :cond_8

    const v3, 0xf000

    and-int/2addr v3, v8

    const v5, 0xd000

    if-ne v3, v5, :cond_8

    .line 389
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const/16 v3, 0x20e3

    if-ne v8, v3, :cond_b

    if-lez v10, :cond_4

    .line 395
    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-lt v3, v5, :cond_9

    const/16 v5, 0x39

    if-le v3, v5, :cond_a

    :cond_9
    const/16 v5, 0x23

    if-eq v3, v5, :cond_a

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_4

    :cond_a
    sub-int v5, v10, v15

    add-int/lit8 v14, v5, 0x1

    .line 399
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v13, v15

    const/16 v16, 0x1

    goto :goto_4

    :cond_b
    const/16 v3, 0xa9

    if-eq v8, v3, :cond_d

    const/16 v3, 0xae

    if-eq v8, v3, :cond_d

    const/16 v3, 0x203c

    if-lt v8, v3, :cond_c

    const/16 v3, 0x3299

    if-gt v8, v3, :cond_c

    goto :goto_7

    :cond_c
    const/4 v3, -0x1

    goto :goto_8

    .line 404
    :cond_d
    :goto_7
    sget-object v3, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, -0x1

    if-ne v13, v3, :cond_e

    move v13, v10

    :cond_e
    add-int/lit8 v14, v14, 0x1

    .line 409
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_6

    :goto_8
    if-eq v13, v3, :cond_f

    const/4 v3, 0x0

    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v3, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto :goto_9

    :cond_f
    const v3, 0xfe0f

    if-eq v8, v3, :cond_4

    const/16 v3, 0xa

    if-eq v8, v3, :cond_4

    const/16 v3, 0x20

    if-eq v8, v3, :cond_4

    const/16 v3, 0x9

    if-eq v8, v3, :cond_4

    const/4 v3, 0x1

    :goto_9
    if-eqz v16, :cond_13

    add-int/lit8 v15, v10, 0x2

    if-ge v15, v4, :cond_13

    add-int/lit8 v7, v10, 0x1

    .line 420
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v6, 0xd83c

    if-ne v5, v6, :cond_10

    .line 422
    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v6, 0xdffb

    if-lt v5, v6, :cond_13

    const v6, 0xdfff

    if-gt v5, v6, :cond_13

    add-int/lit8 v10, v10, 0x3

    .line 424
    invoke-interface {v0, v7, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    goto :goto_a

    .line 428
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v15, 0x2

    if-lt v6, v15, :cond_13

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const v6, 0xd83c

    if-ne v15, v6, :cond_13

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const v6, 0xdff4

    if-ne v15, v6, :cond_13

    const v6, 0xdb40

    if-ne v5, v6, :cond_13

    .line 431
    :cond_11
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v7, 0x1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    add-int/2addr v14, v5

    add-int/lit8 v7, v7, 0x2

    .line 434
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v7, v10, :cond_12

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v10, v6, :cond_11

    :cond_12
    add-int/lit8 v10, v7, -0x1

    :cond_13
    move v15, v10

    :goto_a
    move v5, v3

    move v6, v15

    const/4 v3, 0x0

    :goto_b
    const/4 v7, 0x3

    if-ge v3, v7, :cond_1c

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v4, :cond_19

    .line 445
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    move-wide/from16 v22, v11

    const/4 v11, 0x1

    if-ne v3, v11, :cond_14

    const/16 v11, 0x200d

    if-ne v10, v11, :cond_1a

    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_1a

    .line 449
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    move v6, v7

    const/4 v5, 0x0

    const v11, 0xfe0f

    const/16 v12, 0x2a

    const/16 v16, 0x0

    goto :goto_d

    :cond_14
    const/4 v11, -0x1

    const/16 v12, 0x2a

    if-ne v13, v11, :cond_15

    if-eq v8, v12, :cond_15

    const/16 v11, 0x23

    if-eq v8, v11, :cond_15

    const/16 v11, 0x30

    if-lt v8, v11, :cond_18

    const/16 v11, 0x39

    if-gt v8, v11, :cond_18

    :cond_15
    const v11, 0xfe00

    if-lt v10, v11, :cond_18

    const v11, 0xfe0f

    if-gt v10, v11, :cond_1b

    add-int/lit8 v14, v14, 0x1

    if-nez v16, :cond_17

    add-int/lit8 v6, v7, 0x1

    if-lt v6, v4, :cond_16

    const/4 v6, 0x1

    goto :goto_c

    :cond_16
    const/4 v6, 0x0

    :goto_c
    move/from16 v16, v6

    :cond_17
    move v6, v7

    goto :goto_d

    :cond_18
    const v11, 0xfe0f

    goto :goto_d

    :cond_19
    move-wide/from16 v22, v11

    :cond_1a
    const v11, 0xfe0f

    const/16 v12, 0x2a

    :cond_1b
    :goto_d
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v11, v22

    goto :goto_b

    :cond_1c
    move-wide/from16 v22, v11

    if-eqz v5, :cond_1d

    if-eqz v9, :cond_1d

    const/4 v3, 0x0

    .line 466
    aput v3, v9, v3

    const/4 v3, 0x0

    move-object v9, v3

    :cond_1d
    if-eqz v16, :cond_1e

    add-int/lit8 v3, v6, 0x2

    if-ge v3, v4, :cond_1e

    add-int/lit8 v5, v6, 0x1

    .line 469
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v8, 0xd83c

    if-ne v7, v8, :cond_1e

    .line 470
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v8, 0xdffb

    if-lt v7, v8, :cond_1e

    const v8, 0xdfff

    if-gt v7, v8, :cond_1e

    add-int/lit8 v6, v6, 0x3

    .line 472
    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    move v6, v3

    :cond_1e
    if-eqz v16, :cond_20

    if-eqz v9, :cond_1f

    const/4 v3, 0x0

    .line 479
    aget v5, v9, v3

    const/4 v7, 0x1

    add-int/2addr v5, v7

    aput v5, v9, v3

    .line 481
    :cond_1f
    new-instance v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    add-int/2addr v14, v13

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v13, v14, v5}, Lorg/telegram/messenger/Emoji$EmojiSpanRange;-><init>(IILjava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto :goto_e

    :cond_20
    const/4 v3, 0x1

    :goto_e
    add-int/lit8 v10, v6, 0x1

    move-wide/from16 v11, v22

    const/16 v3, 0x10

    const-wide/16 v5, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 489
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_21
    if-eqz v9, :cond_22

    .line 491
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v2, 0x0

    .line 492
    aput v2, v9, v2

    :cond_22
    :goto_f
    return-object v1
.end method

.method public static preloadEmoji(Ljava/lang/CharSequence;)V
    .locals 1

    .line 97
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getDrawableInfo(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$DrawableInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    iget-byte v0, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    iget-short p0, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:S

    invoke-static {v0, p0}, Lorg/telegram/messenger/Emoji;->loadEmoji(BS)V

    :cond_0
    return-void
.end method

.method public static removeRecentEmoji(Ljava/lang/String;)V
    .locals 1

    .line 676
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 678
    sget-object p0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 679
    :cond_0
    sget-object p0, Lorg/telegram/messenger/Emoji;->DEFAULT_RECENT:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->addRecentEmoji(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 502
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;
    .locals 0

    const/4 p2, 0x0

    .line 506
    invoke-static {p0, p1, p3, p4, p2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    .locals 2

    const/16 v0, 0x10

    .line 498
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[II)Ljava/lang/CharSequence;
    .locals 8

    .line 510
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    if-nez p2, :cond_1

    .line 514
    instance-of p2, p0, Landroid/text/Spannable;

    if-eqz p2, :cond_1

    .line 515
    move-object p2, p0

    check-cast p2, Landroid/text/Spannable;

    goto :goto_0

    .line 517
    :cond_1
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p2

    .line 519
    :goto_0
    invoke-static {p2, p3}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;

    move-result-object p3

    .line 520
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 524
    :cond_2
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result p0

    const-class v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v1, 0x0

    invoke-interface {p2, v1, p0, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 527
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    const/16 v0, 0x64

    goto :goto_1

    :cond_3
    const/16 v0, 0x32

    :goto_1
    const/4 v2, 0x0

    .line 528
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 530
    :try_start_0
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    if-eqz p0, :cond_6

    const/4 v4, 0x0

    .line 533
    :goto_3
    array-length v5, p0

    if-ge v4, v5, :cond_5

    .line 534
    aget-object v5, p0, v4

    if-eqz v5, :cond_4

    .line 535
    invoke-interface {p2, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    iget v7, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    if-ne v6, v7, :cond_4

    invoke-interface {p2, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    iget v6, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    if-ne v5, v6, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_6

    goto :goto_7

    .line 544
    :cond_6
    iget-object v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-static {v4}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 546
    new-instance v5, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-direct {v5, v4, p4, p1}, Lorg/telegram/messenger/Emoji$EmojiSpan;-><init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint$FontMetricsInt;)V

    .line 547
    iget-object v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    iput-object v4, v5, Lorg/telegram/messenger/Emoji$EmojiSpan;->emoji:Ljava/lang/String;

    .line 548
    iget v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    iget v3, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    const/16 v6, 0x21

    invoke-interface {p2, v5, v4, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v3

    .line 551
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 553
    :cond_8
    :goto_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_9

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_a

    :cond_9
    add-int/lit8 v3, v2, 0x1

    if-lt v3, v0, :cond_a

    goto :goto_8

    :cond_a
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    :goto_8
    return-object p2

    :cond_c
    :goto_9
    return-object p0
.end method

.method public static saveEmojiColors()V
    .locals 5

    .line 804
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 807
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ","

    .line 808
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 811
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 814
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveRecentEmoji()V
    .locals 5

    .line 710
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 713
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ","

    .line 714
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 717
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 720
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emojis2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static sortEmoji()V
    .locals 3

    .line 684
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 685
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 686
    sget-object v2, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 688
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda2;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 704
    :goto_1
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x30

    if-le v0, v1, :cond_1

    .line 705
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method
