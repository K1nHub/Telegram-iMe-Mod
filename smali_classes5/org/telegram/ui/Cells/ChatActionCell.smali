.class public Lorg/telegram/ui/Cells/ChatActionCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "ChatActionCell.java"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field private backgroundButtonTop:I

.field private backgroundHeight:I

.field private backgroundPath:Landroid/graphics/Path;

.field private backgroundRectHeight:I

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

.field private overrideBackground:I

.field private overrideBackgroundPaint:Landroid/graphics/Paint;

.field private overrideText:I

.field private overrideTextPaint:Landroid/text/TextPaint;

.field private pressedLink:Landroid/text/style/URLSpan;

.field private previousWidth:I

.field progressToProgress:F

.field progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private rect:Landroid/graphics/RectF;

.field private rippleView:Landroid/view/View;

.field private settingWallpaperLayout:Landroid/text/StaticLayout;

.field settingWallpaperPaint:Landroid/text/TextPaint;

.field private settingWallpaperProgress:F

.field private settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

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

.field private themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x1

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
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

    .line 326
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 96
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 3

    .line 330
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 209
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    .line 223
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 225
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    .line 228
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilersPool:Ljava/util/Stack;

    const/4 v0, -0x1

    .line 250
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackground:I

    .line 251
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideText:I

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    .line 258
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    .line 260
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateColors:Z

    .line 276
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    .line 277
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    .line 281
    new-instance v2, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    .line 285
    new-instance v2, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftStickerDelegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    .line 321
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    .line 331
    iput p4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    .line 332
    iget-object p4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v1, p4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 333
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    .line 334
    iput-object p3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 335
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 336
    sget p3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 337
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 338
    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->TAG:I

    .line 340
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {v0, p4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 341
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p4, 0x41700000    # 15.0f

    invoke-static {v0, p4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 343
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    .line 344
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const/16 p3, 0x10

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    const/4 p4, 0x7

    invoke-static {p1, p4, p3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 348
    new-instance p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 p2, 0x64

    .line 349
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    .line 350
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->isCircle:Z

    .line 351
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    .line 352
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    .line 353
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    .line 354
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    .line 355
    iput v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const p2, 0x3f7ae148    # 0.98f

    .line 356
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    .line 357
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    const/4 p2, 0x0

    .line 358
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    const-wide/16 p2, 0x2ee

    .line 359
    iput-wide p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->minLifeTime:J

    const/16 p2, 0x2ee

    .line 360
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->randLifeTime:I

    .line 361
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/ChatActionCell;)Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/ChatActionCell;Landroid/text/style/CharacterStyle;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->openLink(Landroid/text/style/CharacterStyle;)V

    return-void
.end method

.method private buildLayout()V
    .locals 11

    .line 1092
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 1094
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1095
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    .line 1096
    iget v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1097
    sget v4, Lorg/telegram/messenger/R$string;->ExpiredStoryMention:I

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ExpiredStoryMention"

    invoke-static {v2, v6, v4, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->createExpiredStoryString(ZLjava/lang/String;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1099
    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->ExpiredStoryMentioned:I

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v6, v5, v3

    const-string v6, "ExpiredStoryMentioned"

    invoke-static {v2, v6, v4, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->createExpiredStoryString(ZLjava/lang/String;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1101
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getTopicId()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1102
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    neg-long v5, v5

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7, v2}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v4

    .line 1103
    invoke-static {v4, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createActionTextWithTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    if-nez v4, :cond_7

    .line 1106
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_5

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v5, :cond_5

    .line 1107
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v5, :cond_3

    .line 1108
    sget v4, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    const-string v5, "AttachPhotoExpired"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1109
    :cond_3
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v4, :cond_4

    .line 1110
    sget v4, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    const-string v5, "AttachVideoExpired"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1112
    :cond_4
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 1115
    :cond_5
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 1119
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    .line 1121
    :cond_7
    :goto_1
    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    if-eqz v0, :cond_17

    .line 1123
    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_8

    .line 1124
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

    goto/16 :goto_b

    :cond_8
    const/16 v5, 0x12

    if-ne v4, v5, :cond_9

    .line 1126
    sget v1, Lorg/telegram/messenger/R$string;->ActionGiftPremiumTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->ActionGiftPremiumSubtitle:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Months"

    invoke-static {v6, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftPremiumView:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_b

    :cond_9
    const/16 v5, 0x15

    const-wide/16 v6, 0x0

    if-ne v4, v5, :cond_12

    .line 1128
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    .line 1130
    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 1131
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-nez v6, :cond_c

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_b

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    move v6, v3

    goto :goto_4

    :cond_c
    :goto_3
    move v6, v2

    .line 1132
    :goto_4
    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    iget-wide v9, v9, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_e

    .line 1133
    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v6, :cond_d

    .line 1135
    sget v5, Lorg/telegram/messenger/R$string;->ActionSuggestVideoFromYouDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v0, "ActionSuggestVideoFromYouDescription"

    invoke-static {v0, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1137
    :cond_d
    sget v5, Lorg/telegram/messenger/R$string;->ActionSuggestPhotoFromYouDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v0, "ActionSuggestPhotoFromYouDescription"

    invoke-static {v0, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_e
    if-eqz v6, :cond_f

    .line 1141
    sget v0, Lorg/telegram/messenger/R$string;->ActionSuggestVideoToYouDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v5, v2, v3

    const-string v5, "ActionSuggestVideoToYouDescription"

    invoke-static {v5, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1143
    :cond_f
    sget v0, Lorg/telegram/messenger/R$string;->ActionSuggestPhotoToYouDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v5, v2, v3

    const-string v5, "ActionSuggestPhotoToYouDescription"

    invoke-static {v5, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    :goto_5
    iget-boolean v2, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-nez v2, :cond_11

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_6

    .line 1150
    :cond_10
    sget v2, Lorg/telegram/messenger/R$string;->ViewPhotoAction:I

    const-string v4, "ViewPhotoAction"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 1148
    :cond_11
    :goto_6
    sget v2, Lorg/telegram/messenger/R$string;->ViewVideoAction:I

    const-string v4, "ViewVideoAction"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1152
    :goto_7
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-direct {p0, v1, v0, v2, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1153
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 1154
    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 1155
    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    goto/16 :goto_b

    :cond_12
    const/16 v5, 0x16

    if-ne v4, v5, :cond_15

    .line 1157
    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1160
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v6, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_14

    .line 1161
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object v2, v1

    goto :goto_9

    .line 1163
    :cond_14
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1164
    sget v2, Lorg/telegram/messenger/R$string;->ViewWallpaperAction:I

    const-string v4, "ViewWallpaperAction"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1166
    :goto_9
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-direct {p0, v1, v0, v2, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1167
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 1168
    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 1169
    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    goto :goto_b

    .line 1170
    :cond_15
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1171
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1175
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v5, :cond_16

    .line 1176
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1177
    sget v4, Lorg/telegram/messenger/R$string;->StoryYouMentionedTitle:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v0, "StoryYouMentionedTitle"

    invoke-static {v0, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_a

    .line 1179
    :cond_16
    sget v0, Lorg/telegram/messenger/R$string;->StoryMentionedTitle:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v4, "StoryMentionedTitle"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1181
    :goto_a
    sget v2, Lorg/telegram/messenger/R$string;->StoryMentionedAction:I

    const-string v4, "StoryMentionedAction"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1183
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-direct {p0, v1, v0, v2, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1184
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 1185
    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 1186
    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    :cond_17
    :goto_b
    return-void
.end method

.method private createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 15

    move-object v0, p0

    const/16 v1, 0x10

    .line 1192
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p4, v1

    const/16 v10, 0x21

    const/4 v11, 0x0

    const-string v12, "fonts/rmedium.ttf"

    const/4 v13, 0x0

    if-eqz p1, :cond_0

    .line 1194
    invoke-static/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1195
    new-instance v2, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v11, v4, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1196
    new-instance v14, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v14

    move v5, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 1198
    :cond_0
    iput-object v13, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    .line 1200
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1201
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    const/16 v3, 0xd

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1

    .line 1203
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    const/16 v3, 0xf

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1205
    :goto_1
    new-instance v14, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v14

    move-object/from16 v3, p2

    move v5, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    if-eqz p3, :cond_2

    .line 1207
    invoke-static/range {p3 .. p3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1208
    new-instance v2, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v11, v4, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1209
    new-instance v10, Landroid/text/StaticLayout;

    const-string v2, "paintChatActionText"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move v5, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    .line 1210
    invoke-direct {p0, v10}, Lorg/telegram/ui/Cells/ChatActionCell;->measureLayoutWidth(Landroid/text/Layout;)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    goto :goto_2

    .line 1212
    :cond_2
    iput-object v13, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    .line 1213
    iput v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    :goto_2
    return-void
.end method

.method private createLayout(Ljava/lang/CharSequence;I)V
    .locals 11

    const/16 v0, 0x1e

    .line 935
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p2, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x1

    .line 939
    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    .line 941
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->drawServiceWithDefaultTypeface:Z

    if-eqz v1, :cond_1

    const-string v1, "paintChatActionText2"

    .line 942
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    check-cast v1, Landroid/text/TextPaint;

    goto :goto_0

    :cond_1
    const-string v1, "paintChatActionText"

    .line 944
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    check-cast v1, Landroid/text/TextPaint;

    :goto_0
    move-object v3, v1

    .line 946
    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    iput v1, v3, Landroid/text/TextPaint;->linkColor:I

    .line 947
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

    .line 949
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v9

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v4, v9, [Landroid/text/Layout;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    aput-object v5, v4, v2

    invoke-static {v2, p0, v1, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 951
    iput v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 952
    iput v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 954
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-ge v2, v1, :cond_4

    .line 958
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_3

    move v3, v4

    .line 962
    :cond_3
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    int-to-double v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 967
    :try_start_2
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    int-to-double v4, v4

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 964
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 970
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 972
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    const/4 v0, 0x7

    .line 973
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    .line 976
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilersPool:Ljava/util/Stack;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 977
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 978
    instance-of p2, p1, Landroid/text/Spannable;

    if-eqz p2, :cond_5

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int v3, v2, p2

    move-object v4, p1

    check-cast v4, Landroid/text/Spannable;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilersPool:Ljava/util/Stack;

    iget-object v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private getImageSize(Lorg/telegram/messenger/MessageObject;)I
    .locals 2

    .line 1083
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 1084
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/16 p1, 0x4e

    .line 1085
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1777
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 1781
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 1782
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getUploadingInfoProgress(Lorg/telegram/messenger/MessageObject;)F
    .locals 2

    if-eqz p1, :cond_0

    .line 652
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 653
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 654
    iget-object v1, v0, Lorg/telegram/messenger/MessagesController;->uploadingWallpaper:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 655
    iget-object p1, v0, Lorg/telegram/messenger/MessagesController;->uploadingWallpaperInfo:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->uploadingProgress:F

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method private isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1793
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNewStyleButtonLayout()Z
    .locals 3

    .line 1079
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 1

    if-eqz p2, :cond_3

    .line 287
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 289
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    .line 290
    iget-boolean v0, p2, Lorg/telegram/messenger/MessageObject;->playedGiftAnimation:Z

    if-nez v0, :cond_2

    .line 291
    iput-boolean p3, p2, Lorg/telegram/messenger/MessageObject;->playedGiftAnimation:Z

    .line 292
    invoke-virtual {p1, p4, p4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 293
    new-instance p3, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 295
    iget-boolean p1, p2, Lorg/telegram/messenger/MessageObject;->wasUnread:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->forceWasUnread:Z

    if-eqz p1, :cond_3

    .line 296
    :cond_0
    iput-boolean p4, p2, Lorg/telegram/messenger/MessageObject;->wasUnread:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->forceWasUnread:Z

    const/4 p1, 0x3

    const/4 p2, 0x2

    .line 299
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :catch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    .line 307
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz p2, :cond_3

    .line 308
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-interface {p2, p0, p3, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needShowEffectOverlay(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 313
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$openPremiumGiftPreview$1(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;)V
    .locals 2

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didOpenPremiumGift(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Z)V

    return-void
.end method

.method private measureLayoutWidth(Landroid/text/Layout;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1219
    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1220
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

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_4

    .line 889
    check-cast p1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string v0, "topic"

    .line 890
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    instance-of v1, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v1, :cond_0

    .line 891
    check-cast v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .line 892
    invoke-virtual {v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getObject()Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 893
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_4

    .line 894
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 895
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

    .line 897
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    instance-of v1, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v1, :cond_1

    .line 898
    check-cast v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .line 899
    invoke-virtual {v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getObject()Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 900
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_4

    .line 901
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needOpenInviteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    goto :goto_0

    :cond_1
    const-string v0, "game"

    .line 904
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didPressReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V

    goto :goto_0

    :cond_2
    const-string v0, "http"

    .line 926
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 927
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 929
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

    .line 876
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;-><init>()V

    .line 877
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 878
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->amount:J

    .line 879
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->months:I

    .line 880
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->currency:Ljava/lang/String;

    .line 882
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v1, :cond_0

    .line 883
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setStarsPaused(Z)V
    .locals 7

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-ne p1, v1, :cond_0

    return-void

    .line 721
    :cond_0
    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-eqz p1, :cond_1

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pausedTime:J

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 725
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 726
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

    .line 728
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    :goto_1
    return-void
.end method

.method private updateTextInternal(Z)V
    .locals 2

    .line 392
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 394
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 396
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->wasLayout:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 398
    new-instance p1, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    .line 403
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 119
    sget p2, Lorg/telegram/messenger/NotificationCenter;->startSpoilers:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    goto :goto_0

    .line 121
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopSpoilers:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 122
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    goto :goto_0

    .line 123
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    if-ne p1, p2, :cond_2

    .line 124
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    goto :goto_0

    .line 128
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    if-ne p1, p2, :cond_3

    .line 129
    aget-object p1, p3, v0

    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Z)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1487
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    if-eqz v2, :cond_1

    .line 1488
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 1491
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string v2, "paintChatActionBackground"

    .line 1495
    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    const-string v3, "paintChatActionText"

    .line 1496
    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    .line 1497
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackground:I

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ltz v3, :cond_3

    .line 1498
    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedColor(I)I

    move-result v2

    .line 1499
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_2

    .line 1500
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    .line 1501
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1502
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    const-string v3, "fonts/rmedium.ttf"

    .line 1503
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1504
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1505
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideText:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1507
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    .line 1508
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    .line 1510
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    const/4 v7, 0x4

    if-eqz v3, :cond_22

    const/4 v3, 0x0

    .line 1511
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    .line 1512
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1513
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-nez v9, :cond_4

    move v9, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    :goto_0
    const/16 v10, 0xb

    .line 1514
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/16 v11, 0x8

    .line 1515
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    move v12, v3

    move v13, v12

    :goto_1
    if-ge v12, v9, :cond_6

    .line 1519
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

    .line 1526
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

    .line 1530
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

    .line 1535
    :goto_4
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v3, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1539
    :cond_8
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1540
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    const/4 v14, 0x3

    .line 1543
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    const/16 v16, 0x6

    .line 1544
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    sub-int v4, v10, v15

    .line 1547
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1548
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 1549
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    int-to-float v5, v12

    int-to-float v8, v3

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5
    if-ge v7, v9, :cond_17

    .line 1552
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1553
    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v7}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v14

    move/from16 v19, v11

    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_9

    .line 1554
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

    .line 1558
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    add-int v2, v2, v18

    :goto_8
    if-eq v7, v11, :cond_c

    if-le v6, v1, :cond_d

    .line 1561
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

    .line 1579
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

    .line 1580
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

    .line 1576
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

    .line 1577
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

    .line 1585
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v3, v9

    .line 1586
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

    .line 1589
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v3, v9

    .line 1590
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v2, v9

    .line 1592
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

    .line 1598
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

    .line 1599
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v2, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_e

    .line 1595
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

    .line 1596
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_16
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move v14, v5

    move v13, v6

    move/from16 v11, v19

    move-object/from16 v2, v20

    move/from16 v5, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v9, v25

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

    .line 1605
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

    .line 1606
    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v1, v9, :cond_19

    .line 1607
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

    .line 1608
    :goto_11
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    .line 1609
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

    .line 1622
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

    .line 1623
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v13, 0x42b40000    # 90.0f

    invoke-virtual {v6, v11, v13, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_14

    .line 1619
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

    .line 1620
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v12, 0x42b40000    # 90.0f

    invoke-virtual {v6, v11, v12, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1626
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

    .line 1632
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

    .line 1633
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

    .line 1629
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

    .line 1630
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v2, v5, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_17
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_f

    .line 1636
    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_18

    :cond_22
    move-object/from16 v20, v2

    .line 1638
    :goto_18
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->visiblePartSet:Z

    if-nez v1, :cond_23

    .line 1639
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1640
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    .line 1642
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v1, :cond_24

    .line 1643
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-interface {v1, v2, v3, v6, v4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_19

    :cond_24
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 1645
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

    .line 1650
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_25

    .line 1651
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 1652
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v3, v1

    .line 1653
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v4, v20

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1654
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1a

    :cond_25
    move-object/from16 v4, v20

    move v2, v1

    .line 1656
    :goto_1a
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1657
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1658
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1661
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1662
    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1663
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    .line 1664
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 1665
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x4

    .line 1666
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1667
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    int-to-float v9, v9

    add-float/2addr v9, v6

    invoke-virtual {v7, v3, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1b

    :cond_27
    const/16 v7, 0xc

    .line 1669
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1670
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

    .line 1672
    :goto_1b
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    if-nez v3, :cond_28

    .line 1673
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    .line 1675
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1676
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v3, v7, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1678
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1679
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v7, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_29
    if-ltz v1, :cond_2a

    .line 1684
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1685
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2a
    return-void
.end method

.method public drawOutboundsContent(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1786
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1787
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1788
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

    .line 1789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCustomDate()I
    .locals 1

    .line 1229
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    return v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 1727
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->TAG:I

    return v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public hasButton()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGradientService()Z
    .locals 1

    .line 1690
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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

    .line 1798
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1799
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1800
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 1814
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 1815
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1816
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    .line 1806
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 1807
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1808
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 704
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    .line 706
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setStarsPaused(Z)V

    .line 708
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v4, v2, [Landroid/text/Layout;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    aput-object v5, v4, v0

    invoke-static {v0, p0, v1, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 709
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 710
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x15

    if-ne v1, v3, :cond_1

    .line 713
    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 690
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 691
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 693
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setStarsPaused(Z)V

    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->wasLayout:Z

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 697
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 698
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 1234
    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1235
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 1236
    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    const/16 v3, 0xb

    const v12, 0x3d99999a    # 0.075f

    const/16 v13, 0x8

    const/high16 v14, 0x40000000    # 2.0f

    const/16 v15, 0x10

    const/4 v9, 0x4

    if-eqz v2, :cond_4

    .line 1237
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/16 v4, 0x6a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 1238
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1239
    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->getImageSize(Lorg/telegram/messenger/MessageObject;)I

    move-result v1

    .line 1240
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v2, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1241
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v14

    int-to-float v2, v2

    .line 1243
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1244
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v6, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iput-object v6, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 1246
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    add-float v7, v4, v6

    add-float v8, v2, v6

    invoke-virtual {v5, v4, v2, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1247
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v4, v2, v6, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_0

    .line 1248
    :cond_1
    iget v2, v11, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v3, :cond_2

    .line 1249
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v14

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v12

    add-float/2addr v6, v7

    int-to-float v7, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v6, v7, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_0

    .line 1251
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1252
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

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    int-to-float v6, v1

    invoke-virtual {v2, v4, v5, v6, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    :goto_0
    const-string v2, "paintChatActionText"

    .line 1254
    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    check-cast v2, Landroid/text/TextPaint;

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eqz v2, :cond_4

    .line 1256
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 1257
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1259
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    if-eq v2, v4, :cond_4

    .line 1260
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    :cond_4
    move v8, v1

    const/4 v1, 0x0

    .line 1265
    invoke-virtual {v0, v10, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    .line 1267
    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    const/16 v7, 0x16

    const/16 v6, 0x18

    const/16 v5, 0x15

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_5

    if-eqz v11, :cond_b

    iget v1, v11, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v1, v3, :cond_b

    .line 1268
    :cond_5
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1269
    iget-object v1, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    .line 1270
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->id:I

    iput v1, v12, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    .line 1271
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2, v3, v10, v1, v12}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_1

    .line 1274
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1276
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1277
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1278
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1279
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v12

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v15

    add-float/2addr v12, v15

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1280
    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v15

    iget-object v13, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v13

    add-float/2addr v15, v13

    .line 1276
    invoke-virtual {v1, v2, v3, v12, v15}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(FFFF)V

    .line 1282
    iget v1, v11, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v5, :cond_9

    .line 1283
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v12, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v1, :cond_8

    .line 1285
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->getCurrentImageProgress()F

    move-result v13

    invoke-virtual {v12, v13, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 1286
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v13, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v13

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v13, v15

    float-to-int v13, v13

    add-int/2addr v13, v3

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 1287
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/RadialProgress2;->setMaxIconSize(I)V

    .line 1288
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhoto:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoSelected:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIcon:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIconSelected:I

    invoke-virtual {v12, v13, v15, v5, v14}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    .line 1289
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->getCurrentImageProgress()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_7

    .line 1290
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v9, v3, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_2

    .line 1292
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v2, v3, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 1295
    :cond_8
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_9
    if-ne v1, v7, :cond_b

    .line 1297
    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->getUploadingInfoProgress(Lorg/telegram/messenger/MessageObject;)F

    move-result v1

    .line 1298
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v5, v1, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 1299
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/16 v12, 0x1a

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 1300
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/RadialProgress2;->setMaxIconSize(I)V

    .line 1301
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhoto:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoSelected:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIcon:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIconSelected:I

    invoke-virtual {v5, v12, v13, v14, v15}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    cmpl-float v1, v1, v4

    if-nez v1, :cond_a

    .line 1303
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v9, v3, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_3

    .line 1305
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v2, v3, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 1307
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 1311
    :cond_b
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_10

    .line 1312
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1313
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1314
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eq v1, v2, :cond_c

    .line 1315
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    .line 1317
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1318
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-static {v10, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 1319
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1320
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    goto :goto_6

    .line 1321
    :cond_e
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v5, 0x0

    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v4, v5

    move-object v5, v12

    move v12, v6

    move v6, v13

    move v13, v7

    move v7, v14

    move v14, v8

    move v8, v15

    move v15, v9

    move/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 1323
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1325
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 1326
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 1327
    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1330
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_10
    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    .line 1333
    :goto_8
    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1334
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1335
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    add-float/2addr v1, v2

    .line 1337
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1338
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_11

    iget v2, v2, Landroid/graphics/RectF;->top:F

    goto :goto_9

    :cond_11
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v2, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    :goto_9
    const/16 v3, 0x10

    .line 1339
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    add-float/2addr v2, v3

    int-to-float v3, v14

    add-float/2addr v2, v3

    const/16 v4, 0x15

    goto :goto_b

    .line 1341
    :cond_12
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v3, v3

    const v4, 0x3d99999a    # 0.075f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v11, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_13

    move v8, v14

    goto :goto_a

    :cond_13
    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    :goto_a
    int-to-float v3, v8

    add-float/2addr v2, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1342
    iget v3, v11, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v3, v4, :cond_14

    const/16 v3, 0x10

    .line 1343
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v3, v5

    add-float/2addr v2, v3

    .line 1345
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-nez v3, :cond_15

    .line 1346
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1350
    :cond_15
    :goto_b
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1351
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_16

    .line 1352
    invoke-virtual {v3, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1353
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_c

    .line 1355
    :cond_16
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1357
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1359
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1360
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1361
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1362
    iget v2, v11, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v3, 0x0

    if-ne v2, v13, :cond_1d

    .line 1363
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getTransitionProgress()F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-nez v2, :cond_18

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v2

    if-eq v2, v15, :cond_17

    goto :goto_d

    .line 1411
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_e

    .line 1364
    :cond_18
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_19

    .line 1365
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperPaint:Landroid/text/TextPaint;

    const/16 v6, 0xd

    .line 1366
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1367
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getWidth()I

    move-result v20

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v18, "Setting new wallpaper..."

    move-object/from16 v17, v2

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    .line 1369
    :cond_19
    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->getUploadingInfoProgress(Lorg/telegram/messenger/MessageObject;)F

    move-result v2

    .line 1370
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_1a

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgress:F

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_1b

    .line 1371
    :cond_1a
    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgress:F

    .line 1372
    new-instance v6, Landroid/text/StaticLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getWidth()I

    move-result v20

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v6

    move-object/from16 v19, v2

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    .line 1375
    :cond_1b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperPaint:Landroid/text/TextPaint;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1376
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v2

    if-ne v2, v15, :cond_1c

    .line 1377
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getTransitionProgress()F

    move-result v2

    .line 1378
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    .line 1379
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperPaint:Landroid/text/TextPaint;

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v5, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1380
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v7

    const v8, 0x3f4ccccd    # 0.8f

    add-float/2addr v2, v8

    .line 1383
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1384
    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v16, 0x40000000    # 2.0f

    div-float v14, v14, v16

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v16

    invoke-virtual {v10, v2, v2, v14, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1385
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1386
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1388
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    mul-float/2addr v9, v7

    add-float/2addr v9, v8

    .line 1390
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1391
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v10, v9, v9, v2, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1392
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1393
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1396
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v10, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1397
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v10, v9, v9, v2, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1398
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1399
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1402
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_e

    .line 1404
    :cond_1c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1405
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1406
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v10, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1407
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1408
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    .line 1414
    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1416
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1418
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_1e

    const/16 v2, 0x8

    .line 1419
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    goto :goto_f

    :cond_1e
    const/16 v2, 0x8

    .line 1422
    :goto_f
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    .line 1423
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    .line 1424
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 1426
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v2, :cond_20

    .line 1427
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-interface {v2, v5, v6, v3, v7}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_10

    .line 1429
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v2, v5, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 1432
    :goto_10
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_24

    const-string v2, "paintChatActionBackground"

    .line 1433
    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    .line 1434
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v10, v5, v7, v8, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1437
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v6, v7

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1440
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v2, v4, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v2, v13, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v2, v12, :cond_23

    .line 1441
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 1442
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    const/16 v5, 0x10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v5, v7

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v6, v5, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1443
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1444
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    invoke-virtual {v10, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1446
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 1447
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-nez v2, :cond_22

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 1450
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_11

    .line 1453
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 1457
    :cond_24
    :goto_11
    iget-boolean v2, v11, Lorg/telegram/messenger/MessageObject;->settingAvatar:Z

    const v4, 0x3dda740e

    if-eqz v2, :cond_25

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_25

    add-float/2addr v5, v4

    .line 1458
    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    goto :goto_12

    :cond_25
    if-nez v2, :cond_26

    .line 1459
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_26

    sub-float/2addr v2, v4

    .line 1460
    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    .line 1462
    :cond_26
    :goto_12
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_28

    .line 1464
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v2, :cond_27

    .line 1465
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    :cond_27
    const/16 v2, 0x10

    .line 1467
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 1468
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1469
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v10, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1470
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 1471
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1472
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v10, v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->draw(Landroid/graphics/Canvas;FF)V

    .line 1473
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1475
    :cond_28
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_29

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_29

    .line 1476
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1477
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    sub-float v4, v3, v2

    .line 1478
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v10, v4, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1479
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1480
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1481
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_29
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 1734
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1736
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    return-void

    .line 1739
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_3

    .line 1740
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1741
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1742
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 1743
    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1744
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1745
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1746
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1748
    new-instance v7, Lorg/telegram/ui/Cells/ChatActionCell$1;

    invoke-direct {v7, p0, v4}, Lorg/telegram/ui/Cells/ChatActionCell$1;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Landroid/text/style/CharacterStyle;)V

    const/16 v4, 0x21

    .line 1756
    invoke-virtual {v1, v7, v5, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1758
    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    .line 1760
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    .line 1761
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1763
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v0, 0x1

    .line 1765
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 685
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

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_0

    .line 678
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
    .locals 17

    move-object/from16 v0, p0

    .line 986
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v2, 0xe

    if-nez v1, :cond_0

    .line 987
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 988
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 991
    :cond_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 992
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    const v6, 0x3f19999a    # 0.6f

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    const/16 v6, 0x22

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    :goto_0
    float-to-int v3, v3

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    sub-int/2addr v6, v7

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v6, v7

    const/16 v7, 0x40

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/16 v6, 0x6a

    .line 993
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 994
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 995
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    div-int/2addr v6, v4

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_1

    .line 997
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_3
    :goto_1
    const/16 v3, 0x1e

    .line 1000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1001
    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    if-eq v7, v6, :cond_4

    const/4 v7, 0x1

    .line 1002
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wasLayout:Z

    .line 1003
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 1004
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    :cond_4
    const/16 v7, 0xc

    const/16 v8, 0xa

    if-eqz v1, :cond_6

    .line 1008
    iget v9, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_5

    .line 1009
    sget v9, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    :goto_2
    add-int/2addr v9, v10

    goto :goto_3

    .line 1010
    :cond_5
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1011
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    goto :goto_2

    :cond_6
    move v9, v5

    .line 1016
    :goto_3
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1017
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getImageSize(Lorg/telegram/messenger/MessageObject;)I

    move-result v10

    .line 1019
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v11

    const/16 v12, 0x10

    const/4 v13, 0x4

    if-eqz v11, :cond_7

    .line 1020
    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v11, v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v11, v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    mul-int/2addr v14, v4

    add-int/2addr v11, v14

    add-int/2addr v11, v10

    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v14

    add-int/2addr v11, v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v11, v14

    int-to-float v11, v11

    goto :goto_4

    .line 1022
    :cond_7
    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v11, v14

    int-to-float v11, v11

    iget v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v14, v14

    const v15, 0x3d99999a    # 0.075f

    mul-float/2addr v14, v15

    add-float/2addr v11, v14

    int-to-float v14, v10

    add-float/2addr v11, v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    .line 1024
    :goto_4
    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1025
    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    if-eqz v14, :cond_8

    .line 1026
    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v11, v3

    goto :goto_5

    .line 1028
    :cond_8
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v11, v7

    .line 1029
    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v7, v3

    iput v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1032
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-le v3, v4, :cond_9

    .line 1033
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v5}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v7

    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v14

    sub-int/2addr v7, v14

    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v14

    mul-int/2addr v7, v14

    sub-int/2addr v7, v4

    add-int/2addr v3, v7

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1035
    :cond_9
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    add-int/2addr v9, v3

    .line 1037
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v3, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v3, v7

    .line 1039
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    const/high16 v14, 0x40000000    # 2.0f

    const/16 v15, 0x12

    const/16 v16, 0x8

    if-eqz v7, :cond_c

    int-to-float v3, v3

    sub-float/2addr v3, v11

    if-eqz v7, :cond_a

    .line 1040
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    goto :goto_6

    :cond_a
    move v7, v5

    :goto_6
    int-to-float v7, v7

    sub-float/2addr v3, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    div-float/2addr v3, v14

    add-float/2addr v11, v3

    .line 1041
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    int-to-float v3, v3

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    sub-float/2addr v3, v7

    div-float/2addr v3, v14

    .line 1042
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v11, v14

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    add-float/2addr v3, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v3, v8

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    goto :goto_7

    :cond_b
    move v8, v5

    :goto_7
    int-to-float v8, v8

    add-float/2addr v11, v8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v11, v8

    invoke-virtual {v7, v2, v14, v3, v11}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_8

    :cond_c
    const/16 v2, 0x28

    .line 1044
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v9, v3

    .line 1045
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1047
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v12

    shl-int/2addr v2, v3

    .line 1048
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1049
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1050
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsSize:I

    if-eq v3, v2, :cond_d

    .line 1051
    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsSize:I

    .line 1052
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resetPositions()V

    .line 1055
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1056
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v2, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1057
    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1058
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v10

    add-int/2addr v5, v3

    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1059
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v5, v3

    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1060
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_e

    add-int/2addr v5, v2

    const/16 v3, 0xa

    .line 1061
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundButtonTop:I

    .line 1062
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 1063
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundButtonTop:I

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    add-float/2addr v3, v10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v3, v10

    iget v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundButtonTop:I

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v10, v11

    int-to-float v4, v10

    invoke-virtual {v5, v7, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1064
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    int-to-float v3, v3

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1066
    :cond_e
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    add-int/2addr v2, v3

    const/4 v3, 0x6

    .line 1068
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int v5, v2, v3

    :cond_f
    if-eqz v1, :cond_10

    .line 1071
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1072
    invoke-virtual {v0, v6, v5}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_9

    .line 1074
    :cond_10
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v1, v9

    const/16 v2, 0xe

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_9
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

    .line 1700
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_2

    .line 1701
    iget p1, v9, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1703
    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1704
    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1705
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_0

    move-object p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1710
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

    .line 1711
    iget p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 740
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    .line 742
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 744
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchX:F

    .line 745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchY:F

    .line 748
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x15

    const/4 v6, 0x1

    if-nez v4, :cond_7

    .line 749
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v4, :cond_14

    .line 750
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

    .line 751
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    move v4, v6

    goto :goto_0

    :cond_3
    move v4, v1

    .line 754
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    iget v7, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v7, v5, :cond_4

    const/16 v5, 0x16

    if-ne v7, v5, :cond_5

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 755
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    move v4, v6

    .line 758
    :cond_5
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 759
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    move v4, v6

    :cond_6
    if-eqz v4, :cond_15

    .line 763
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->startCheckLongPress()V

    goto/16 :goto_3

    .line 767
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_8

    .line 768
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->cancelCheckLongPress()V

    .line 770
    :cond_8
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    const/16 v8, 0x12

    const/4 v9, 0x3

    if-eqz v4, :cond_f

    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v6, :cond_c

    if-eq v4, v7, :cond_a

    if-eq v4, v9, :cond_9

    goto/16 :goto_2

    .line 792
    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_2

    .line 795
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 796
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backroundRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_14

    .line 797
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_2

    .line 800
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v4

    if-nez v4, :cond_14

    .line 801
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_2

    .line 773
    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 774
    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v8, :cond_d

    .line 775
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->openPremiumGiftPreview()V

    goto/16 :goto_2

    .line 776
    :cond_d
    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v7, :cond_14

    if-ne v4, v5, :cond_e

    .line 779
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v4, :cond_e

    .line 782
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ImageUpdater;->cancel()V

    move v4, v6

    goto :goto_1

    :cond_e
    move v4, v1

    :goto_1
    if-nez v4, :cond_14

    .line 786
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v4, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 787
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_2

    .line 806
    :cond_f
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    if-eqz v4, :cond_14

    .line 807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v6, :cond_12

    if-eq v4, v7, :cond_11

    if-eq v4, v9, :cond_10

    goto :goto_2

    .line 823
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 826
    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_14

    .line 827
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 809
    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    .line 810
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v4, :cond_14

    .line 811
    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v8, :cond_13

    .line 812
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 813
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->openPremiumGiftPreview()V

    goto :goto_2

    .line 815
    :cond_13
    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ImageUpdater;

    if-nez v4, :cond_14

    .line 817
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v4, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    :cond_14
    :goto_2
    move v4, v1

    :cond_15
    :goto_3
    if-nez v4, :cond_1c

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-eqz v5, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_1c

    .line 835
    :cond_16
    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    if-eqz v5, :cond_1b

    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    int-to-float v9, v8

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_1b

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v10, v9

    cmpl-float v10, v3, v10

    if-ltz v10, :cond_1b

    iget v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1b

    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_1b

    int-to-float v8, v9

    sub-float/2addr v3, v8

    .line 837
    iget v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v8, v8

    sub-float/2addr v2, v8

    float-to-int v3, v3

    .line 839
    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    .line 840
    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3, v2}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 841
    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v8

    cmpg-float v9, v8, v2

    if-gtz v9, :cond_1a

    .line 842
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    add-float/2addr v8, v3

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_1a

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_1a

    .line 843
    check-cast v0, Landroid/text/Spannable;

    .line 844
    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v5, v5, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 846
    array-length v2, v0

    if-eqz v2, :cond_18

    .line 847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_17

    .line 848
    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto :goto_4

    .line 851
    :cond_17
    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-ne v0, v1, :cond_19

    .line 852
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->openLink(Landroid/text/style/CharacterStyle;)V

    goto :goto_4

    .line 857
    :cond_18
    iput-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    :cond_19
    move v6, v4

    :goto_4
    move v4, v6

    goto :goto_5

    .line 860
    :cond_1a
    iput-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto :goto_5

    .line 863
    :cond_1b
    iput-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    :cond_1c
    :goto_5
    if-nez v4, :cond_1d

    .line 869
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_1d
    return v4
.end method

.method public setCustomDate(IZZ)V
    .locals 4

    .line 369
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

    .line 375
    sget p2, Lorg/telegram/messenger/R$string;->MessageScheduledUntilOnline:I

    const-string v0, "MessageScheduledUntilOnline"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 377
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

    .line 380
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object p2

    .line 382
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    .line 383
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 386
    :cond_3
    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 387
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    .line 388
    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/ChatActionCell;->updateTextInternal(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCustomText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 410
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->updateTextInternal(Z)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    return-void
.end method

.method public setInvalidateColors(Z)V
    .locals 1

    .line 1769
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateColors:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1772
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateColors:Z

    .line 1773
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void
.end method

.method public setInvalidateWithParent(Landroid/view/View;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 424
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

    .line 427
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

    .line 428
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Wrong thread!!!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    const/4 v1, 0x0

    .line 430
    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    .line 431
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v3, :cond_5

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->stableId:I

    iget v4, v14, Lorg/telegram/messenger/MessageObject;->stableId:I

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v16, v15

    goto :goto_1

    :cond_5
    :goto_0
    move/from16 v16, v13

    .line 432
    :goto_1
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 433
    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_6

    move v3, v13

    goto :goto_2

    :cond_6
    move v3, v15

    :goto_2
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    .line 434
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 435
    iput v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 436
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v15}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 437
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_8

    .line 438
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 439
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 440
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_7

    .line 441
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->noforwards:Z

    if-eqz v2, :cond_7

    .line 442
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZIZ)V

    goto :goto_3

    .line 444
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 446
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto/16 :goto_1a

    .line 447
    :cond_8
    iget v3, v14, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x16

    const/4 v12, 0x3

    const/4 v11, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_d

    .line 449
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_a

    .line 450
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v15

    :goto_4
    if-ge v2, v1, :cond_a

    .line 451
    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 452
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 458
    :cond_a
    :goto_5
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 459
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    const-string v3, "150_150_wallpaper"

    if-eqz v2, :cond_b

    .line 460
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-static {v3}, Lorg/telegram/ui/ChatBackgroundDrawable;->hash(Lorg/telegram/tgnet/TLRPC$WallPaperSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v2}, Lorg/telegram/ui/ChatBackgroundDrawable;->createThumb(Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const/16 v27, 0x1

    move-object/from16 v17, v5

    move-object/from16 v26, v1

    invoke-virtual/range {v17 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    .line 462
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v14, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-static {v3}, Lorg/telegram/ui/ChatBackgroundDrawable;->hash(Lorg/telegram/tgnet/TLRPC$WallPaperSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v3}, Lorg/telegram/ui/ChatBackgroundDrawable;->createThumb(Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const/16 v38, 0x1

    move-object/from16 v28, v2

    move-object/from16 v37, v1

    invoke-virtual/range {v28 .. v38}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 464
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 466
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getUploadingInfoProgress(Lorg/telegram/messenger/MessageObject;)F

    move-result v1

    cmpl-float v1, v1, v9

    if-nez v1, :cond_c

    .line 468
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    invoke-virtual {v1, v9, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 469
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    xor-int/lit8 v3, v16, 0x1

    invoke-virtual {v1, v11, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_1a

    .line 471
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    xor-int/lit8 v3, v16, 0x1

    invoke-virtual {v1, v12, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_1a

    :cond_d
    const/16 v5, 0x3e8

    if-ne v3, v2, :cond_15

    .line 474
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 475
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v13}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 476
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 477
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    .line 479
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v3

    .line 481
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 482
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_7

    :cond_e
    move-object v2, v1

    .line 486
    :goto_7
    iget-object v4, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 488
    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_10

    .line 489
    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v15

    :goto_8
    if-ge v7, v6, :cond_10

    .line 490
    iget-object v8, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 491
    instance-of v10, v8, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v10, :cond_f

    move-object v1, v8

    goto :goto_9

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 497
    :cond_10
    :goto_9
    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    if-eqz v5, :cond_12

    if-eqz v3, :cond_11

    .line 500
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v5, v14, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v8, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v5, "g"

    const-string v7, "150_150"

    const-string v10, "50_50_b"

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v10

    move-wide/from16 v9, v17

    move-object/from16 v11, v19

    move-object/from16 v12, p1

    move/from16 v13, v20

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_a

    .line 502
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

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

    .line 506
    :cond_12
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 507
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v1, :cond_14

    .line 508
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->getCurrentImageProgress()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_13

    goto :goto_b

    .line 512
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    const/4 v12, 0x1

    xor-int/lit8 v3, v16, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_1a

    :cond_14
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_b
    const/4 v12, 0x1

    .line 509
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v3, v16, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 510
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    xor-int/lit8 v3, v16, 0x1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_1a

    :cond_15
    move v4, v11

    move v12, v13

    const/16 v2, 0x12

    if-ne v3, v2, :cond_25

    .line 515
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 526
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 528
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->checkPremiumGiftStickers()V

    return-void

    .line 531
    :cond_16
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    if-nez v3, :cond_17

    .line 533
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    :cond_17
    move-object v9, v3

    if-eqz v9, :cond_1e

    .line 536
    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    .line 547
    sget-object v4, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 549
    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 550
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 551
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 552
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    .line 553
    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v12, v12, v7

    if-nez v12, :cond_18

    move-object v5, v11

    goto :goto_f

    :cond_18
    const/4 v12, 0x1

    goto :goto_e

    :cond_19
    :goto_f
    if-eqz v5, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v12, 0x1

    goto :goto_d

    :cond_1b
    :goto_10
    if-eqz v5, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v12, 0x1

    goto :goto_c

    :cond_1d
    :goto_11
    if-nez v5, :cond_1f

    .line 568
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 569
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_12

    :cond_1e
    move-object v5, v1

    .line 573
    :cond_1f
    :goto_12
    iget-boolean v3, v14, Lorg/telegram/messenger/MessageObject;->wasUnread:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->forceWasUnread:Z

    .line 574
    iput-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_23

    .line 576
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 577
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftStickerDelegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 579
    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

    move v1, v15

    .line 580
    :goto_13
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 581
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    const-string v3, "f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 582
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

    goto :goto_14

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 587
    :cond_21
    :goto_14
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v7

    if-eqz v7, :cond_22

    const/16 v1, 0x200

    .line 589
    invoke-virtual {v7, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 592
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 593
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

    goto/16 :goto_1a

    .line 595
    :cond_23
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    if-nez v9, :cond_24

    const/4 v13, 0x1

    goto :goto_15

    :cond_24
    move v13, v15

    :goto_15
    invoke-virtual {v1, v2, v15, v13}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    goto/16 :goto_1a

    :cond_25
    const/16 v2, 0xb

    if-ne v3, v2, :cond_2d

    .line 599
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 600
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 601
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 602
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 603
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 604
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v2, v3, v1, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v2, :cond_26

    .line 606
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_19

    .line 609
    :cond_26
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_28

    .line 610
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v15

    :goto_16
    if-ge v3, v2, :cond_28

    .line 611
    iget-object v6, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 612
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v7, :cond_27

    goto :goto_17

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_28
    move-object v6, v1

    .line 618
    :goto_17
    iget-object v2, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v3, 0x280

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 620
    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 622
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2a

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 623
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v5

    .line 624
    iget-boolean v7, v14, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v7, :cond_29

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v7

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    int-to-long v8, v8

    invoke-virtual {v7, v4, v8, v9}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(IJ)Z

    move-result v4

    if-nez v4, :cond_29

    .line 625
    invoke-static {v5, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentVideoLocation:Lorg/telegram/messenger/ImageLocation;

    .line 626
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .line 627
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    invoke-virtual {v5, v4, v14, v0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    goto :goto_18

    :cond_29
    move-object v1, v5

    :cond_2a
    :goto_18
    if-eqz v1, :cond_2b

    .line 632
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

    goto :goto_19

    .line 634
    :cond_2b
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

    goto :goto_19

    .line 637
    :cond_2c
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 640
    :goto_19
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto :goto_1a

    :cond_2d
    const/4 v3, 0x1

    .line 642
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 643
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 644
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 646
    :goto_1a
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_1b

    :cond_2e
    const/16 v15, 0x8

    :goto_1b
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 647
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopicToMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setOverrideColor(II)V
    .locals 0

    .line 415
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackground:I

    .line 416
    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideText:I

    return-void
.end method

.method public setSpoilersSuppressed(Z)V
    .locals 2

    .line 139
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

    .line 140
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setSuppressUpdates(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisiblePart(FI)V
    .locals 1

    const/4 v0, 0x1

    .line 670
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->visiblePartSet:Z

    .line 671
    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    .line 672
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    return-void
.end method
