.class public Lorg/telegram/ui/Cells/ChatActionCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "ChatActionCell.java"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;,
        Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
    }
.end annotation


# static fields
.field private static monthsToEmoticon:Ljava/util/Map;
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
.field private TAG:I

.field private accessibilityText:Landroid/text/SpannableStringBuilder;

.field private animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private backgroundHeight:I

.field private backgroundPath:Landroid/graphics/Path;

.field private backroundRect:Landroid/graphics/RectF;

.field private canDrawInParent:Z

.field private currentAccount:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentVideoLocation:Lorg/telegram/messenger/ImageLocation;

.field private customDate:I

.field private customText:Ljava/lang/CharSequence;

.field private delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

.field private forceWasUnread:Z

.field private giftButtonPressed:Z

.field private giftButtonRect:Landroid/graphics/RectF;

.field private giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field private giftPremiumAdditionalHeight:I

.field private giftPremiumButtonLayout:Landroid/text/StaticLayout;

.field private giftPremiumButtonWidth:F

.field private giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

.field private giftPremiumTitleLayout:Landroid/text/StaticLayout;

.field private giftRectSize:I

.field private giftSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private giftStickerDelegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

.field private giftSubtitlePaint:Landroid/text/TextPaint;

.field private giftTitlePaint:Landroid/text/TextPaint;

.field private hasReplyMessage:Z

.field private imagePressed:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private invalidateColors:Z

.field private invalidatePath:Z

.field private invalidateWithParent:Landroid/view/View;

.field private lastTouchX:F

.field private lastTouchY:F

.field private lineHeights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lineWidths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private overrideBackground:Ljava/lang/String;

.field private overrideBackgroundPaint:Landroid/graphics/Paint;

.field private overrideText:Ljava/lang/String;

.field private overrideTextPaint:Landroid/text/TextPaint;

.field private pressedLink:Landroid/text/style/URLSpan;

.field private previousWidth:I

.field progressToProgress:F

.field progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private rect:Landroid/graphics/RectF;

.field private rippleView:Landroid/view/View;

.field public spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilersPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private starsPath:Landroid/graphics/Path;

.field private starsSize:I

.field private stickerSize:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field textPaint:Landroid/text/TextPaint;

.field private textWidth:I

.field private textX:I

.field private textXLeft:I

.field private textY:I

.field private themeDelegate:Lorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;

.field private viewTop:F

.field private visiblePartSet:Z

.field private wasLayout:Z


# direct methods
.method public static synthetic $r8$lambda$1x2b_Y6N7HQQPp5YJgVARna0iTE(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$openPremiumGiftPreview$1(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HMRtj1arEEULlRmGY60s-uwgyzM(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x1

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 310
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;)V
    .locals 1

    .line 105
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;I)V
    .locals 3

    .line 314
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 198
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    .line 213
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    .line 216
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilersPool:Ljava/util/Stack;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    .line 246
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    const/4 v1, 0x0

    .line 248
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateColors:Z

    .line 260
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    .line 261
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    .line 265
    new-instance v2, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    .line 269
    new-instance v2, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftStickerDelegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    .line 305
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    .line 315
    iput p4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    .line 316
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    .line 317
    iput-object p3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;

    .line 318
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 319
    sget p3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 320
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 321
    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->TAG:I

    .line 323
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {v0, p4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 324
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p4, 0x41700000    # 15.0f

    invoke-static {v0, p4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 326
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    const-string p1, "listSelectorSDK21"

    .line 327
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    const/16 p3, 0x10

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    const/4 p4, 0x7

    invoke-static {p1, p4, p3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 331
    new-instance p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 p2, 0x64

    .line 332
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    .line 333
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->isCircle:Z

    .line 334
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    .line 335
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    .line 336
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    .line 337
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    .line 338
    iput v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const p2, 0x3f7ae148    # 0.98f

    .line 339
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    .line 340
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    const/4 p2, 0x0

    .line 341
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    const-wide/16 p2, 0x2ee

    .line 342
    iput-wide p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->minLifeTime:J

    const/16 p2, 0x2ee

    .line 343
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->randLifeTime:I

    .line 344
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/ChatActionCell;)Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/ChatActionCell;Landroid/text/style/CharacterStyle;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->openLink(Landroid/text/style/CharacterStyle;)V

    return-void
.end method

.method private buildLayout()V
    .locals 12

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 989
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getTopicId()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 990
    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    neg-long v4, v4

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6, v2}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v3

    .line 991
    invoke-static {v3, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createActionTextWithTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_5

    .line 994
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_3

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v4, :cond_3

    .line 995
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v4, :cond_1

    .line 996
    sget v3, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    const-string v4, "AttachPhotoExpired"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 997
    :cond_1
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v3, :cond_2

    .line 998
    sget v3, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    const-string v4, "AttachVideoExpired"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1000
    :cond_2
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 1003
    :cond_3
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 1007
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    .line 1009
    :cond_5
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    if-eqz v0, :cond_10

    .line 1011
    iget v3, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/16 v3, 0x13

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto/16 :goto_8

    :cond_6
    const/16 v4, 0x12

    const/4 v5, 0x0

    if-ne v3, v4, :cond_7

    .line 1014
    sget v1, Lorg/telegram/messenger/R$string;->ActionGiftPremiumTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->ActionGiftPremiumSubtitle:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "Months"

    invoke-static {v6, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftPremiumView:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    :cond_7
    const/16 v4, 0x15

    if-ne v3, v4, :cond_10

    .line 1016
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    .line 1018
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1019
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-nez v6, :cond_a

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_9

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v6, 0x1

    .line 1020
    :goto_4
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    iget-wide v9, v9, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_c

    .line 1021
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v6, :cond_b

    .line 1023
    sget v4, Lorg/telegram/messenger/R$string;->ActionSuggestVideoFromYouDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v0, v2, v5

    const-string v0, "ActionSuggestVideoFromYouDescription"

    invoke-static {v0, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1025
    :cond_b
    sget v4, Lorg/telegram/messenger/R$string;->ActionSuggestPhotoFromYouDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v0, v2, v5

    const-string v0, "ActionSuggestPhotoFromYouDescription"

    invoke-static {v0, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    .line 1029
    sget v0, Lorg/telegram/messenger/R$string;->ActionSuggestVideoToYouDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v4, v2, v5

    const-string v4, "ActionSuggestVideoToYouDescription"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1031
    :cond_d
    sget v0, Lorg/telegram/messenger/R$string;->ActionSuggestPhotoToYouDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v4, v2, v5

    const-string v4, "ActionSuggestPhotoToYouDescription"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    :goto_5
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-nez v2, :cond_f

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_6

    .line 1038
    :cond_e
    sget v2, Lorg/telegram/messenger/R$string;->ViewPhotoAction:I

    const-string v3, "ViewPhotoAction"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 1036
    :cond_f
    :goto_6
    sget v2, Lorg/telegram/messenger/R$string;->ViewVideoAction:I

    const-string v3, "ViewVideoAction"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1040
    :goto_7
    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1041
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 1042
    iput v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 1043
    iput v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    :cond_10
    :goto_8
    return-void
.end method

.method private createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 11

    const/16 v0, 0x10

    .line 1049
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p4, v0

    const/16 v0, 0x21

    const/4 v9, 0x0

    const-string v10, "fonts/rmedium.ttf"

    if-eqz p1, :cond_0

    .line 1051
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1052
    new-instance p1, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, p1, v9, v1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1053
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move v4, p4

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1055
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    .line 1057
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_1

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_1

    .line 1058
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    const/16 v1, 0xd

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1

    .line 1060
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    const/16 v1, 0xf

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1062
    :goto_1
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    .line 1063
    invoke-static {p3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1064
    new-instance p1, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {v2, p1, v9, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1065
    new-instance p1, Landroid/text/StaticLayout;

    const-string p2, "paintChatActionText"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    .line 1066
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->measureLayoutWidth(Landroid/text/Layout;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    return-void
.end method

.method private createLayout(Ljava/lang/CharSequence;I)V
    .locals 11

    const/16 v0, 0x1e

    .line 866
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p2, v0

    const/4 v9, 0x1

    .line 867
    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    .line 869
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->drawServiceWithDefaultTypeface:Z

    if-eqz v1, :cond_0

    const-string v1, "paintChatActionText2"

    .line 870
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    check-cast v1, Landroid/text/TextPaint;

    goto :goto_0

    :cond_0
    const-string v1, "paintChatActionText"

    .line 872
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    check-cast v1, Landroid/text/TextPaint;

    :goto_0
    move-object v3, v1

    .line 874
    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    iput v1, v3, Landroid/text/TextPaint;->linkColor:I

    .line 875
    new-instance v10, Landroid/text/StaticLayout;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p1

    move v4, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 877
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilersPool:Ljava/util/Stack;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 878
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 879
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 880
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    check-cast p1, Landroid/text/Spannable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilersPool:Ljava/util/Stack;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-static {p0, v1, p1, v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V

    .line 882
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v9, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v1

    invoke-static {v1, p0, p1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 884
    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 885
    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 887
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-ge v1, p1, :cond_4

    .line 891
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    move v2, v3

    .line 895
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 900
    :try_start_2
    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    int-to-double v3, v3

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 897
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 903
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 905
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    sub-int p1, p2, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    const/4 p1, 0x7

    .line 906
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 907
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1524
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 1528
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 1529
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1540
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 1

    if-eqz p2, :cond_3

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 273
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    .line 274
    iget-boolean v0, p2, Lorg/telegram/messenger/MessageObject;->playedGiftAnimation:Z

    if-nez v0, :cond_2

    .line 275
    iput-boolean p3, p2, Lorg/telegram/messenger/MessageObject;->playedGiftAnimation:Z

    .line 276
    invoke-virtual {p1, p4, p4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 277
    new-instance p3, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 279
    iget-boolean p1, p2, Lorg/telegram/messenger/MessageObject;->wasUnread:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->forceWasUnread:Z

    if-eqz p1, :cond_3

    .line 280
    :cond_0
    iput-boolean p4, p2, Lorg/telegram/messenger/MessageObject;->wasUnread:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->forceWasUnread:Z

    const/4 p1, 0x3

    const/4 p2, 0x2

    .line 283
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 287
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    .line 291
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz p2, :cond_3

    .line 292
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-interface {p2, p0, p3, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needShowEffectOverlay(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 297
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$openPremiumGiftPreview$1(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;)V
    .locals 2

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didOpenPremiumGift(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Z)V

    return-void
.end method

.method private measureLayoutWidth(Landroid/text/Layout;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1071
    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1072
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private openLink(Landroid/text/style/CharacterStyle;)V
    .locals 4

    .line 819
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_4

    .line 820
    check-cast p1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string v0, "topic"

    .line 821
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    instance-of v1, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v1, :cond_0

    .line 822
    check-cast v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .line 823
    invoke-virtual {v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getObject()Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 824
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_4

    .line 825
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getDialogId()J

    move-result-wide v1

    neg-long v1, v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    goto :goto_0

    :cond_0
    const-string v0, "invite"

    .line 828
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    instance-of v1, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v1, :cond_1

    .line 829
    check-cast v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .line 830
    invoke-virtual {v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getObject()Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 831
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_4

    .line 832
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needOpenInviteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    goto :goto_0

    :cond_1
    const-string v0, "game"

    .line 835
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didPressReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V

    goto :goto_0

    :cond_2
    const-string v0, "http"

    .line 857
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needOpenUserProfile(J)V

    :cond_4
    :goto_0
    return-void
.end method

.method private openPremiumGiftPreview()V
    .locals 4

    .line 807
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;-><init>()V

    .line 808
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 809
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->amount:J

    .line 810
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->months:I

    .line 811
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->currency:Ljava/lang/String;

    .line 813
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v1, :cond_0

    .line 814
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setStarsPaused(Z)V
    .locals 7

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-ne p1, v1, :cond_0

    return-void

    .line 657
    :cond_0
    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-eqz p1, :cond_1

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pausedTime:J

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 661
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->lifeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-wide v5, v5, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pausedTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->lifeTime:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 664
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    :goto_1
    return-void
.end method

.method private updateTextInternal(Z)V
    .locals 2

    .line 375
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 377
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 379
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->wasLayout:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 381
    new-instance p1, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    .line 386
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 112
    sget p2, Lorg/telegram/messenger/NotificationCenter;->startSpoilers:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    goto :goto_0

    .line 114
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopSpoilers:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 115
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    goto :goto_0

    .line 116
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    if-ne p1, p2, :cond_2

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    goto :goto_0

    .line 121
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    if-ne p1, p2, :cond_3

    .line 122
    aget-object p1, p3, v0

    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 123
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_3

    .line 125
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Z)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1240
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    if-eqz v2, :cond_1

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 1244
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string v2, "paintChatActionBackground"

    .line 1248
    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    const-string v3, "paintChatActionText"

    .line 1249
    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    .line 1250
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackground:Ljava/lang/String;

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 1251
    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    .line 1252
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_2

    .line 1253
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    .line 1254
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1255
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    const-string v3, "fonts/rmedium.ttf"

    .line 1256
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1257
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1258
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideText:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1260
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    .line 1261
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    .line 1263
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    const/4 v7, 0x4

    if-eqz v3, :cond_22

    const/4 v3, 0x0

    .line 1264
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    .line 1265
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1266
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-nez v9, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    :goto_0
    const/16 v10, 0xb

    .line 1267
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/16 v11, 0x8

    .line 1268
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v9, :cond_6

    .line 1272
    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    if-eqz v12, :cond_5

    sub-int v15, v13, v14

    if-lez v15, :cond_5

    add-int v3, v10, v11

    if-gt v15, v3, :cond_5

    goto :goto_2

    :cond_5
    move v13, v14

    .line 1279
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v9, -0x2

    :goto_3
    if-ltz v3, :cond_8

    .line 1283
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v14, v13, v12

    if-lez v14, :cond_7

    add-int v15, v10, v11

    if-gt v14, v15, :cond_7

    goto :goto_4

    :cond_7
    move v13, v12

    .line 1288
    :goto_4
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v3, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1292
    :cond_8
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1293
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    const/4 v14, 0x3

    .line 1296
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    const/16 v16, 0x6

    .line 1297
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    sub-int v4, v10, v15

    .line 1300
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1301
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 1302
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    int-to-float v5, v12

    int-to-float v8, v3

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5
    if-ge v7, v9, :cond_17

    .line 1305
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1306
    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v7}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v14

    move/from16 v19, v11

    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_9

    .line 1307
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    move-object/from16 v20, v2

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    :cond_9
    move-object/from16 v20, v2

    const/4 v1, 0x0

    :goto_6
    sub-int v2, v14, v8

    if-eqz v7, :cond_b

    if-le v6, v13, :cond_a

    goto :goto_7

    :cond_a
    const/4 v8, 0x3

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v8, 0x3

    .line 1311
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    add-int v2, v2, v18

    :goto_8
    if-eq v7, v11, :cond_c

    if-le v6, v1, :cond_d

    .line 1314
    :cond_c
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    add-int v2, v2, v21

    :cond_d
    int-to-float v8, v6

    const/high16 v17, 0x40000000    # 2.0f

    div-float v8, v8, v17

    add-float/2addr v8, v5

    if-eq v7, v11, :cond_e

    if-ge v6, v1, :cond_e

    if-eqz v7, :cond_e

    if-ge v6, v13, :cond_e

    move/from16 v21, v16

    goto :goto_9

    :cond_e
    move/from16 v21, v19

    :goto_9
    if-eqz v7, :cond_11

    if-le v6, v13, :cond_f

    goto :goto_a

    :cond_f
    move/from16 v22, v5

    if-ge v6, v13, :cond_10

    .line 1332
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    move/from16 v23, v14

    int-to-float v14, v4

    add-float/2addr v14, v8

    move/from16 v24, v12

    int-to-float v12, v3

    move/from16 v25, v9

    mul-int/lit8 v9, v21, 0x2

    move/from16 v26, v13

    int-to-float v13, v9

    add-float/2addr v13, v14

    add-int/2addr v9, v3

    int-to-float v9, v9

    invoke-virtual {v5, v14, v12, v13, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1333
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v12, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v9, v12, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_b

    :cond_10
    move/from16 v25, v9

    move/from16 v24, v12

    move/from16 v26, v13

    move/from16 v23, v14

    goto :goto_b

    :cond_11
    :goto_a
    move/from16 v22, v5

    move/from16 v25, v9

    move/from16 v24, v12

    move/from16 v26, v13

    move/from16 v23, v14

    .line 1329
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v9, v15

    sub-float v9, v8, v9

    int-to-float v12, v10

    sub-float/2addr v9, v12

    int-to-float v12, v3

    int-to-float v13, v4

    add-float/2addr v13, v8

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v3

    int-to-float v14, v14

    invoke-virtual {v5, v9, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1330
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v13, 0x42b40000    # 90.0f

    invoke-virtual {v5, v9, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_b
    add-int/2addr v3, v2

    if-eq v7, v11, :cond_12

    if-ge v6, v1, :cond_12

    const/4 v5, 0x3

    .line 1338
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v3, v9

    .line 1339
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v2, v9

    goto :goto_c

    :cond_12
    const/4 v5, 0x3

    :goto_c
    if-eqz v7, :cond_13

    move/from16 v13, v26

    if-ge v6, v13, :cond_13

    .line 1342
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v3, v9

    .line 1343
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v2, v9

    .line 1345
    :cond_13
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v7, v11, :cond_15

    if-le v6, v1, :cond_14

    goto :goto_d

    :cond_14
    if-ge v6, v1, :cond_16

    .line 1351
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v2, v4

    add-float/2addr v8, v2

    mul-int/lit8 v2, v21, 0x2

    sub-int v9, v3, v2

    int-to-float v9, v9

    int-to-float v2, v2

    add-float/2addr v2, v8

    int-to-float v11, v3

    invoke-virtual {v1, v8, v9, v2, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1352
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v2, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_e

    .line 1348
    :cond_15
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v2, v15

    sub-float v2, v8, v2

    int-to-float v9, v10

    sub-float/2addr v2, v9

    mul-int/lit8 v9, v10, 0x2

    sub-int v9, v3, v9

    int-to-float v9, v9

    int-to-float v11, v4

    add-float/2addr v8, v11

    int-to-float v11, v3

    invoke-virtual {v1, v2, v9, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1349
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_16
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move v13, v6

    move/from16 v11, v19

    move-object/from16 v2, v20

    move/from16 v5, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v9, v25

    const/4 v14, 0x3

    goto/16 :goto_5

    :cond_17
    move-object/from16 v20, v2

    move/from16 v25, v9

    move/from16 v19, v11

    move/from16 v24, v12

    const/4 v1, 0x1

    add-int/lit8 v9, v25, -0x1

    move v1, v9

    :goto_f
    if-ltz v1, :cond_21

    if-eqz v1, :cond_18

    .line 1358
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_10

    :cond_18
    const/4 v2, 0x0

    .line 1359
    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v1, v9, :cond_19

    .line 1360
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_11

    :cond_19
    const/4 v6, 0x0

    .line 1361
    :goto_11
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    .line 1362
    div-int/lit8 v7, v5, 0x2

    sub-int v12, v24, v7

    int-to-float v7, v12

    if-eq v1, v9, :cond_1a

    if-ge v5, v6, :cond_1a

    if-eqz v1, :cond_1a

    if-ge v5, v2, :cond_1a

    move/from16 v8, v16

    goto :goto_12

    :cond_1a
    move/from16 v8, v19

    :goto_12
    if-eq v1, v9, :cond_1c

    if-le v5, v6, :cond_1b

    goto :goto_13

    :cond_1b
    if-ge v5, v6, :cond_1d

    .line 1375
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v11, v4

    sub-float v11, v7, v11

    mul-int/lit8 v12, v8, 0x2

    int-to-float v13, v12

    sub-float v13, v11, v13

    sub-int v12, v3, v12

    int-to-float v12, v12

    int-to-float v14, v3

    invoke-virtual {v6, v13, v12, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1376
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v13, 0x42b40000    # 90.0f

    invoke-virtual {v6, v11, v13, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_14

    .line 1372
    :cond_1c
    :goto_13
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v11, v4

    sub-float v11, v7, v11

    mul-int/lit8 v12, v10, 0x2

    sub-int v12, v3, v12

    int-to-float v12, v12

    int-to-float v13, v15

    add-float/2addr v13, v7

    int-to-float v14, v10

    add-float/2addr v13, v14

    int-to-float v14, v3

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1373
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v12, 0x42b40000    # 90.0f

    invoke-virtual {v6, v11, v12, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1379
    :cond_1d
    :goto_14
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v3, v6

    if-eqz v1, :cond_20

    if-le v5, v2, :cond_1e

    goto :goto_16

    :cond_1e
    if-ge v5, v2, :cond_1f

    .line 1385
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v5, v4

    sub-float/2addr v7, v5

    mul-int/lit8 v8, v8, 0x2

    int-to-float v5, v8

    sub-float v5, v7, v5

    int-to-float v6, v3

    add-int/2addr v8, v3

    int-to-float v8, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1386
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v5, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_15

    :cond_1f
    const/high16 v8, -0x3d4c0000    # -90.0f

    :goto_15
    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x42b40000    # 90.0f

    goto :goto_17

    :cond_20
    :goto_16
    const/high16 v8, -0x3d4c0000    # -90.0f

    .line 1382
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v5, v4

    sub-float v5, v7, v5

    int-to-float v6, v3

    int-to-float v11, v15

    add-float/2addr v7, v11

    int-to-float v11, v10

    add-float/2addr v7, v11

    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v11, v3

    int-to-float v11, v11

    invoke-virtual {v2, v5, v6, v7, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1383
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v2, v5, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_17
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_f

    .line 1389
    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_18

    :cond_22
    move-object/from16 v20, v2

    .line 1391
    :goto_18
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->visiblePartSet:Z

    if-nez v1, :cond_23

    .line 1392
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1393
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    .line 1395
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;

    if-eqz v1, :cond_24

    .line 1396
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v6, 0x0

    invoke-interface {v1, v2, v3, v6, v4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_19

    :cond_24
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 1398
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v1, v2, v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    :goto_19
    const/4 v1, -0x1

    if-eqz p2, :cond_25

    .line 1403
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_25

    .line 1404
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 1405
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v3, v1

    .line 1406
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v4, v20

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1407
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1a

    :cond_25
    move-object/from16 v4, v20

    const/4 v2, -0x1

    .line 1409
    :goto_1a
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1410
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1411
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1414
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1415
    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1416
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v6, v7

    const/16 v7, 0xc

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 1417
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v9, v8

    add-float/2addr v9, v3

    int-to-float v8, v8

    add-float/2addr v8, v6

    iget v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    invoke-virtual {v7, v3, v6, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1418
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    if-nez v3, :cond_27

    .line 1419
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    .line 1421
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1422
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v3, v7, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1425
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v7, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_28
    if-ltz v1, :cond_29

    .line 1430
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1431
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_29
    return-void
.end method

.method public drawOutboundsContent(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1533
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1534
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1535
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 1536
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCustomDate()I
    .locals 1

    .line 1081
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    return v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 1473
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->TAG:I

    return v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public hasGradientService()Z
    .locals 1

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1545
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 1561
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 1562
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1563
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    .line 1553
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 1554
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1555
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 640
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    .line 642
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setStarsPaused(Z)V

    .line 644
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v4, v2, [Landroid/text/Layout;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    aput-object v5, v4, v0

    invoke-static {v0, p0, v1, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 645
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 646
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x15

    if-ne v1, v3, :cond_1

    .line 649
    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 627
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 628
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 630
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setStarsPaused(Z)V

    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->wasLayout:Z

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 634
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 635
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 1086
    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1087
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 1088
    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    const/16 v3, 0xb

    const v12, 0x3d99999a    # 0.075f

    const/16 v13, 0x8

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    .line 1089
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/16 v4, 0x6a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 1090
    iget v4, v11, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v3, :cond_0

    .line 1091
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v14

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v7, v7

    mul-float v7, v7, v12

    add-float/2addr v6, v7

    int-to-float v7, v2

    int-to-float v2, v2

    invoke-virtual {v4, v5, v6, v7, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_0

    :cond_0
    int-to-float v1, v2

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 1094
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v14

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v6, v6

    mul-float v6, v6, v12

    add-float/2addr v5, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    int-to-float v6, v1

    invoke-virtual {v2, v4, v5, v6, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1096
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    if-eqz v2, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    if-eqz v4, :cond_2

    .line 1097
    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 1098
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1100
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 1101
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    :cond_2
    move v15, v1

    const/4 v1, 0x0

    .line 1106
    invoke-virtual {v0, v10, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    .line 1108
    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    const/16 v9, 0x15

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    if-nez v1, :cond_3

    if-eqz v11, :cond_6

    iget v1, v11, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v1, v3, :cond_6

    .line 1109
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1110
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1111
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1112
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1113
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1114
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    add-float/2addr v5, v6

    .line 1110
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(FFFF)V

    .line 1116
    iget v1, v11, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v1, v9, :cond_6

    .line 1117
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v2, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v1, :cond_5

    .line 1119
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->getCurrentImageProgress()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 1120
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 1121
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setMaxIconSize(I)V

    .line 1122
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const-string v3, "chat_mediaLoaderPhoto"

    const-string v5, "chat_mediaLoaderPhotoSelected"

    const-string v6, "chat_mediaLoaderPhotoIcon"

    const-string v9, "chat_mediaLoaderPhotoIconSelected"

    invoke-virtual {v2, v3, v5, v6, v9}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->getCurrentImageProgress()F

    move-result v1

    cmpl-float v1, v1, v8

    if-nez v1, :cond_4

    .line 1124
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v7, v4, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_1

    .line 1126
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 1129
    :cond_5
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 1133
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_b

    .line 1134
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1135
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1136
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eq v1, v2, :cond_7

    .line 1137
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    .line 1139
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1140
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-static {v10, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 1141
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1142
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const/16 v18, 0x4

    goto :goto_3

    .line 1143
    :cond_9
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    const/16 v18, 0x4

    move v7, v9

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v8, v16

    move/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 1145
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1147
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 1148
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 1149
    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 1152
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_b
    const/16 v18, 0x4

    .line 1155
    :goto_5
    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1156
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1157
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v3, v3

    mul-float v3, v3, v12

    add-float/2addr v2, v3

    int-to-float v3, v15

    add-float/2addr v2, v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1158
    iget v3, v11, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x10

    const/16 v5, 0x15

    if-ne v3, v5, :cond_c

    .line 1159
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1161
    :cond_c
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1162
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_d

    .line 1163
    invoke-virtual {v3, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1164
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_6

    .line 1166
    :cond_d
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1168
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1170
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1171
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1172
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1173
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1174
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1176
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    if-nez v3, :cond_e

    .line 1177
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1180
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    div-float/2addr v3, v14

    add-float/2addr v2, v3

    .line 1183
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/Cells/ChatActionCell$ThemeDelegate;

    const/4 v6, 0x0

    if-eqz v3, :cond_f

    .line 1184
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v9, v12

    invoke-interface {v3, v7, v8, v6, v9}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_7

    .line 1186
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v3, v7, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    :goto_7
    const-string v3, "paintChatActionBackground"

    .line 1188
    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    .line 1189
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v10, v7, v8, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1192
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1195
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 1196
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v7, v8, v9, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1197
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1198
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v3, v5, :cond_11

    .line 1200
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 1201
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-nez v3, :cond_12

    .line 1202
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    goto :goto_8

    .line 1206
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 1208
    :cond_12
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1210
    iget-boolean v3, v11, Lorg/telegram/messenger/MessageObject;->settingAvatar:Z

    const v5, 0x3dda740e

    if-eqz v3, :cond_13

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_14

    add-float/2addr v7, v5

    .line 1211
    iput v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    goto :goto_9

    :cond_13
    const/high16 v8, 0x3f800000    # 1.0f

    :cond_14
    if-nez v3, :cond_15

    .line 1212
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    cmpl-float v7, v3, v6

    if-eqz v7, :cond_15

    sub-float/2addr v3, v5

    .line 1213
    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    .line 1215
    :cond_15
    :goto_9
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    invoke-static {v3, v8, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_17

    .line 1217
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v3, :cond_16

    .line 1218
    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1220
    :cond_16
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1221
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1222
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v10, v4, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1223
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 1224
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const-string v4, "chat_serviceText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1225
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v3, v10, v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->draw(Landroid/graphics/Canvas;FF)V

    .line 1226
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1228
    :cond_17
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_18

    .line 1229
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1230
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    sub-float/2addr v8, v3

    .line 1231
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v10, v8, v8, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1232
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1233
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1234
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 1480
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1482
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    return-void

    .line 1485
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_3

    .line 1486
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1487
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1488
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 1489
    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1490
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1491
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1492
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1494
    new-instance v7, Lorg/telegram/ui/Cells/ChatActionCell$1;

    invoke-direct {v7, p0, v4}, Lorg/telegram/ui/Cells/ChatActionCell$1;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Landroid/text/style/CharacterStyle;)V

    const/16 v4, 0x21

    .line 1502
    invoke-virtual {v1, v7, v5, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1504
    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    .line 1506
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1509
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v0, 0x1

    .line 1511
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 622
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    iget p4, p2, Landroid/graphics/RectF;->top:F

    float-to-int p4, p4

    iget p5, p2, Landroid/graphics/RectF;->right:F

    float-to-int p5, p5

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onLongPress()Z
    .locals 3

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_0

    .line 615
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchX:F

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchY:F

    invoke-interface {v0, p0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didLongPress(Lorg/telegram/ui/Cells/ChatActionCell;FF)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 913
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v0, 0xe

    if-nez p2, :cond_0

    .line 914
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 915
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 918
    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 919
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const v5, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    const/16 v6, 0x40

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/16 v5, 0x6a

    .line 920
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 921
    iget v5, p2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v5, v3, :cond_2

    .line 922
    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    div-int/2addr v1, v2

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_1

    .line 924
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_3
    :goto_1
    const/16 v1, 0x1e

    .line 927
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 928
    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    if-eq v5, p1, :cond_4

    const/4 v5, 0x1

    .line 929
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->wasLayout:Z

    .line 930
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 931
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    :cond_4
    const/16 v5, 0xc

    if-eqz p2, :cond_6

    .line 935
    iget v6, p2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_5

    .line 936
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    const/16 v7, 0xa

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    :goto_2
    add-int/2addr v6, v7

    goto :goto_3

    .line 937
    :cond_5
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 938
    iget v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 942
    :goto_3
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 943
    iget v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 944
    iget v8, p2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v8, v3, :cond_7

    int-to-float v7, v7

    const v8, 0x3f333333    # 0.7f

    mul-float v7, v7, v8

    float-to-int v7, v7

    .line 947
    :cond_7
    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v9, v9

    const v10, 0x3d99999a    # 0.075f

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    int-to-float v7, v7

    add-float/2addr v8, v7

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    .line 948
    iput v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 949
    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    if-eqz v7, :cond_8

    .line 950
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v8, v1

    goto :goto_4

    .line 952
    :cond_8
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v8, v5

    .line 953
    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v5, v1

    iput v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 955
    :goto_4
    iget p2, p2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x10

    if-ne p2, v3, :cond_9

    .line 956
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v8, p2

    .line 959
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    if-le p2, v2, :cond_a

    .line 960
    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 962
    :cond_a
    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    add-int/2addr v6, p2

    .line 964
    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr p2, v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr p2, v2

    int-to-float p2, p2

    sub-float/2addr p2, v8

    .line 966
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    add-float/2addr v8, p2

    .line 967
    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    int-to-float p2, p2

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    sub-float/2addr p2, v4

    div-float/2addr p2, v3

    .line 968
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    const/16 v4, 0x12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v8, v7

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    add-float/2addr p2, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p2, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v8, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    invoke-virtual {v3, v5, v7, p2, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 970
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    shl-int/2addr p2, v2

    .line 971
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 972
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 973
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starsSize:I

    if-eq v1, p2, :cond_b

    .line 974
    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starsSize:I

    .line 975
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resetPositions()V

    .line 981
    :cond_b
    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr p2, v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 11

    .line 1446
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_2

    .line 1447
    iget p1, v9, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1449
    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1450
    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1451
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_0

    move-object p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentVideoLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {p1, v2}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v2, "g"

    const-string v4, "50_50_b"

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1457
    iget p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 676
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    .line 678
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 680
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchX:F

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchY:F

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x15

    const/4 v6, 0x1

    if-nez v4, :cond_6

    .line 685
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v4, :cond_13

    .line 686
    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0xb

    if-eq v4, v7, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 687
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 690
    :goto_0
    iget v7, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v7, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 691
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    const/4 v4, 0x1

    .line 694
    :cond_4
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 695
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_14

    .line 699
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->startCheckLongPress()V

    goto/16 :goto_2

    .line 703
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_7

    .line 704
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->cancelCheckLongPress()V

    .line 706
    :cond_7
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    const/16 v8, 0x12

    const/4 v9, 0x3

    if-eqz v4, :cond_e

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v6, :cond_b

    if-eq v4, v7, :cond_9

    if-eq v4, v9, :cond_8

    goto/16 :goto_1

    .line 723
    :cond_8
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_1

    .line 726
    :cond_9
    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v5, :cond_a

    .line 727
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_13

    .line 728
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_1

    .line 731
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v4

    if-nez v4, :cond_13

    .line 732
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_1

    .line 709
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 710
    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v8, :cond_c

    .line 711
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->openPremiumGiftPreview()V

    goto/16 :goto_1

    .line 712
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v4, :cond_13

    .line 713
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v4, :cond_d

    .line 715
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ImageUpdater;->cancel()V

    goto :goto_1

    .line 717
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v4, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 718
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_1

    .line 737
    :cond_e
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    if-eqz v4, :cond_13

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v6, :cond_11

    if-eq v4, v7, :cond_10

    if-eq v4, v9, :cond_f

    goto :goto_1

    .line 754
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 757
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_13

    .line 758
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 740
    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    .line 741
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v4, :cond_13

    .line 742
    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v8, :cond_12

    .line 743
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 744
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->openPremiumGiftPreview()V

    goto :goto_1

    .line 746
    :cond_12
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ImageUpdater;

    if-nez v4, :cond_13

    .line 748
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v4, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    :cond_13
    :goto_1
    const/4 v4, 0x0

    :cond_14
    :goto_2
    if-nez v4, :cond_1b

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-eqz v5, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_1b

    .line 766
    :cond_15
    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    if-eqz v5, :cond_1a

    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    int-to-float v9, v8

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_1a

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v10, v9

    cmpl-float v10, v3, v10

    if-ltz v10, :cond_1a

    iget v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1a

    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_1a

    int-to-float v8, v9

    sub-float/2addr v3, v8

    .line 768
    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v8, v8

    sub-float/2addr v2, v8

    float-to-int v3, v3

    .line 770
    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    .line 771
    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3, v2}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 772
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v8

    cmpg-float v9, v8, v2

    if-gtz v9, :cond_19

    .line 773
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    add-float/2addr v8, v3

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_19

    .line 774
    check-cast v0, Landroid/text/Spannable;

    .line 775
    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v5, v5, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 777
    array-length v2, v0

    if-eqz v2, :cond_17

    .line 778
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_16

    .line 779
    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto :goto_3

    .line 782
    :cond_16
    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-ne v0, v1, :cond_18

    .line 783
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->openLink(Landroid/text/style/CharacterStyle;)V

    goto :goto_3

    .line 788
    :cond_17
    iput-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    :cond_18
    move v6, v4

    :goto_3
    move v4, v6

    goto :goto_4

    .line 791
    :cond_19
    iput-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto :goto_4

    .line 794
    :cond_1a
    iput-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    :cond_1b
    :goto_4
    if-nez v4, :cond_1c

    .line 800
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_1c
    return v4
.end method

.method public setCustomDate(IZZ)V
    .locals 4

    .line 352
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    if-eq v0, p1, :cond_4

    div-int/lit16 v0, v0, 0xe10

    div-int/lit16 v1, p1, 0xe10

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    const p2, 0x7ffffffe

    if-ne p1, p2, :cond_1

    .line 358
    sget p2, Lorg/telegram/messenger/R$string;->MessageScheduledUntilOnline:I

    const-string v0, "MessageScheduledUntilOnline"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 360
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->MessageScheduledOn:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    int-to-long v2, p1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "MessageScheduledOn"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    int-to-long v0, p1

    .line 363
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object p2

    .line 365
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 369
    :cond_3
    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 370
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    .line 371
    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/ChatActionCell;->updateTextInternal(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCustomText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 393
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->updateTextInternal(Z)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    return-void
.end method

.method public setInvalidateColors(Z)V
    .locals 1

    .line 1515
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateColors:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1518
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateColors:Z

    .line 1519
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void
.end method

.method public setInvalidateWithParent(Landroid/view/View;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 407
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v2, 0x15

    if-ne v1, v14, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    if-nez v1, :cond_1

    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_2

    :cond_1
    if-nez p2, :cond_2

    iget v1, v14, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v1, v2, :cond_2

    return-void

    .line 410
    :cond_2
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v1, v3, :cond_3

    .line 411
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Wrong thread!!!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    const/4 v1, 0x0

    .line 413
    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    .line 414
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v3, :cond_5

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->stableId:I

    iget v4, v14, Lorg/telegram/messenger/MessageObject;->stableId:I

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v16, 0x1

    .line 415
    :goto_1
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 416
    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    .line 417
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 418
    iput v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 419
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v15}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 420
    iget v3, v14, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v12, 0x4

    const/16 v4, 0x3e8

    if-ne v3, v2, :cond_e

    .line 421
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 422
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v13}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 423
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 424
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    .line 426
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v3

    .line 428
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 429
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v1

    .line 433
    :goto_3
    iget-object v5, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 435
    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_9

    .line 436
    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_9

    .line 437
    iget-object v8, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 438
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v9, :cond_8

    move-object v1, v8

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 444
    :cond_9
    :goto_5
    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    if-eqz v4, :cond_b

    if-eqz v3, :cond_a

    .line 447
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v5, v14, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v8, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const-string v5, "g"

    const-string v7, "150_150"

    const-string v18, "50_50_b"

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object/from16 v7, v18

    move-object/from16 v12, p1

    move/from16 v13, v17

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    .line 449
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v4, v14, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v5, "150_150"

    const-string v10, "50_50_b"

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 453
    :cond_b
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 454
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ImageUpdater;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_d

    .line 455
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->getCurrentImageProgress()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_c

    goto :goto_7

    .line 459
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v2, 0x3

    xor-int/lit8 v3, v16, 0x1

    const/4 v12, 0x1

    xor-int/lit8 v4, v16, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_16

    :cond_d
    :goto_7
    const/4 v12, 0x1

    .line 456
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v3, v16, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 457
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    xor-int/lit8 v3, v16, 0x1

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_16

    :cond_e
    const/4 v5, 0x4

    const/4 v12, 0x1

    const/16 v2, 0x12

    if-ne v3, v2, :cond_1e

    .line 462
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 473
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 475
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->checkPremiumGiftStickers()V

    return-void

    .line 478
    :cond_f
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    if-nez v3, :cond_10

    .line 480
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    :cond_10
    move-object v9, v3

    if-eqz v9, :cond_17

    .line 483
    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    .line 494
    sget-object v4, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 497
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 498
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 499
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    .line 500
    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v16, v12, v7

    if-nez v16, :cond_11

    move-object v5, v11

    goto :goto_b

    :cond_11
    const/4 v12, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    if-eqz v5, :cond_13

    goto :goto_c

    :cond_13
    const/4 v12, 0x1

    goto :goto_9

    :cond_14
    :goto_c
    if-eqz v5, :cond_15

    goto :goto_d

    :cond_15
    const/4 v12, 0x1

    goto :goto_8

    :cond_16
    :goto_d
    if-nez v5, :cond_18

    .line 515
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 516
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_e

    :cond_17
    move-object v5, v1

    .line 520
    :cond_18
    :goto_e
    iget-boolean v3, v14, Lorg/telegram/messenger/MessageObject;->wasUnread:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->forceWasUnread:Z

    .line 521
    iput-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_1c

    .line 523
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 524
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftStickerDelegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 526
    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

    const/4 v1, 0x0

    .line 527
    :goto_f
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 528
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    const-string v3, "f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 529
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

    goto :goto_10

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 534
    :cond_1a
    :goto_10
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const v2, 0x3e4ccccd    # 0.2f

    const-string v3, "emptyListPlaceholder"

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v7

    if-eqz v7, :cond_1b

    const/16 v1, 0x200

    .line 536
    invoke-virtual {v7, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 539
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 540
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_130_130"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    const-string v8, "tgs"

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_16

    .line 542
    :cond_1c
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    if-nez v9, :cond_1d

    const/4 v13, 0x1

    goto :goto_11

    :cond_1d
    const/4 v13, 0x0

    :goto_11
    invoke-virtual {v1, v2, v15, v13}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    goto/16 :goto_16

    :cond_1e
    const/16 v2, 0xb

    if-ne v3, v2, :cond_26

    .line 546
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 547
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 548
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 549
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 550
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 551
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v2, v3, v1, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v2, :cond_1f

    .line 553
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_15

    .line 556
    :cond_1f
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_21

    .line 557
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_21

    .line 558
    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 559
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v7, :cond_20

    goto :goto_13

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_21
    move-object v6, v1

    .line 565
    :goto_13
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v3, 0x280

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 567
    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 569
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_23

    sget-boolean v7, Lorg/telegram/messenger/SharedConfig;->autoplayGifs:Z

    if-eqz v7, :cond_23

    .line 570
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v7, v4}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v4

    .line 571
    iget-boolean v7, v14, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v7, :cond_22

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v7

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(IJ)Z

    move-result v5

    if-nez v5, :cond_22

    .line 572
    invoke-static {v4, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentVideoLocation:Lorg/telegram/messenger/ImageLocation;

    .line 573
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .line 574
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    invoke-virtual {v5, v4, v14, v0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    goto :goto_14

    :cond_22
    move-object v1, v4

    :cond_23
    :goto_14
    if-eqz v1, :cond_24

    .line 579
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v6, v1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v5, "g"

    const-string v10, "50_50_b"

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_15

    .line 581
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v6, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v3, "150_150"

    const-string v5, "50_50_b"

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_15

    .line 584
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 587
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto :goto_16

    :cond_26
    const/4 v3, 0x1

    .line 589
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 590
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 591
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    :goto_16
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_17

    :cond_27
    const/16 v15, 0x8

    :goto_17
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 594
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopicToMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setOverrideColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackground:Ljava/lang/String;

    .line 399
    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideText:Ljava/lang/String;

    return-void
.end method

.method public setSpoilersSuppressed(Z)V
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 133
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setSuppressUpdates(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisiblePart(FI)V
    .locals 1

    const/4 v0, 0x1

    .line 607
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->visiblePartSet:Z

    .line 608
    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    .line 609
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    return-void
.end method
