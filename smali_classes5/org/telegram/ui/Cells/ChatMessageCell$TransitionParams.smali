.class public Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;
.super Ljava/lang/Object;
.source "ChatMessageCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransitionParams"
.end annotation


# instance fields
.field public animateBackgroundBoundsInner:Z

.field animateBotButtonsChanged:Z

.field private animateButton:Z

.field public animateChange:Z

.field public animateChangeProgress:F

.field private animateCommentArrowX:I

.field private animateCommentDrawUnread:Z

.field private animateCommentUnreadX:I

.field private animateCommentX:F

.field private animateComments:Z

.field private animateCommentsLayout:Landroid/text/StaticLayout;

.field public animateDrawBackground:Z

.field private animateDrawCommentNumber:Z

.field public animateDrawingTimeAlpha:Z

.field private animateEditedEnter:Z

.field private animateEditedLayout:Landroid/text/StaticLayout;

.field private animateEditedWidthDiff:I

.field animateForwardNameWidth:I

.field animateForwardNameX:F

.field public animateForwardedLayout:Z

.field public animateForwardedNamesOffset:I

.field private animateFromButtonX:F

.field private animateFromButtonY:F

.field public animateFromLinkPreviewHeight:I

.field public animateFromLinkPreviewY:I

.field private animateFromMediaOffsetY:I

.field private animateFromReplyTextHeight:F

.field public animateFromReplyY:F

.field public animateFromRoundVideoDotY:F

.field public animateFromTextY:F

.field public animateFromTimeX:I

.field public animateFromTimeXPinned:F

.field private animateFromTimeXReplies:F

.field private animateFromTimeXViews:F

.field public animateLinkAbove:Z

.field public animateLinkPreviewHeight:Z

.field public animateLinkPreviewY:Z

.field public animateLocationIsExpired:Z

.field private animateMediaOffsetY:Z

.field public animateMessageText:Z

.field private animateNameX:F

.field private animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animateOutAnimateEmojiReply:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animateOutCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

.field private animateOutTextBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;"
        }
    .end annotation
.end field

.field private animateOutTextXOffset:F

.field private animatePinned:Z

.field public animatePlayingRound:Z

.field public animateRadius:Z

.field animateReplaceCaptionLayout:Z

.field private animateReplies:Z

.field private animateRepliesLayout:Landroid/text/StaticLayout;

.field private animateReplyTextLayout:Landroid/text/StaticLayout;

.field public animateReplyTextOffset:F

.field public animateRoundVideoDotY:Z

.field private animateShouldDrawMenuDrawable:Z

.field private animateShouldDrawTimeOnMedia:Z

.field private animateSign:Z

.field public animateSmallImage:Z

.field public animateText:Z

.field private animateTimeLayout:Landroid/text/StaticLayout;

.field private animateTimeWidth:I

.field public animateToImageH:F

.field public animateToImageW:F

.field public animateToImageX:F

.field public animateToImageY:F

.field public animateToRadius:[I

.field private animateTotalCommentWidth:I

.field public animateUseTranscribeButton:Z

.field private animateViewsLayout:Landroid/text/StaticLayout;

.field public animatingForwardedNameLayout:[Landroid/text/StaticLayout;

.field public captionEnterProgress:F

.field public captionFromX:F

.field public captionFromY:F

.field public changePinnedBottomProgress:F

.field public deltaBottom:F

.field public deltaLeft:F

.field public deltaRight:F

.field public deltaTop:F

.field public drawPinnedBottomBackground:Z

.field public ignoreAlpha:Z

.field public imageChangeBoundsTransition:Z

.field public imageRoundRadius:[I

.field public lastBackgroundLeft:I

.field public lastBackgroundRight:I

.field private lastButtonX:F

.field private lastButtonY:F

.field private lastCommentArrowX:I

.field private lastCommentDrawUnread:Z

.field private lastCommentLayout:Landroid/text/StaticLayout;

.field private lastCommentUnreadX:I

.field private lastCommentX:F

.field private lastCommentsCount:I

.field public lastDrawBackground:Z

.field private lastDrawBotButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;",
            ">;"
        }
    .end annotation
.end field

.field private lastDrawCommentNumber:Z

.field public lastDrawDocTitleLayout:Landroid/text/StaticLayout;

.field public lastDrawInfoLayout:Landroid/text/StaticLayout;

.field public lastDrawLocationExpireProgress:F

.field public lastDrawLocationExpireText:Ljava/lang/String;

.field public lastDrawReplyY:F

.field public lastDrawRoundVideoDotY:F

.field public lastDrawTime:Z

.field public lastDrawingBackgroundRect:Landroid/graphics/Rect;

.field private lastDrawingCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

.field public lastDrawingCaptionX:F

.field public lastDrawingCaptionY:F

.field private lastDrawingEdited:Z

.field public lastDrawingImageH:F

.field public lastDrawingImageW:F

.field public lastDrawingImageX:F

.field public lastDrawingImageY:F

.field public lastDrawingLinkAbove:Z

.field public lastDrawingLinkPreviewHeight:I

.field public lastDrawingLinkPreviewY:I

.field private lastDrawingReplyTextHeight:F

.field public lastDrawingSmallImage:Z

.field private lastDrawingTextBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;"
        }
    .end annotation
.end field

.field public lastDrawingTextY:F

.field public lastDrawnForwardedName:Z

.field public lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

.field public lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

.field lastForwardNameWidth:I

.field lastForwardNameX:F

.field public lastForwardedNamesOffset:I

.field private lastIsPinned:Z

.field private lastIsPlayingRound:Z

.field public lastLocatinIsExpired:Z

.field private lastMediaOffsetY:I

.field private lastRepliesCount:I

.field private lastRepliesLayout:Landroid/text/StaticLayout;

.field public lastReplyTextXOffset:I

.field private lastShouldDrawMenuDrawable:Z

.field private lastShouldDrawTimeOnMedia:Z

.field private lastSignMessage:Ljava/lang/String;

.field public lastStatusDrawableParams:I

.field public lastTextXOffset:F

.field private lastTimeLayout:Landroid/text/StaticLayout;

.field private lastTimeWidth:I

.field public lastTimeX:I

.field public lastTimeXPinned:F

.field private lastTimeXReplies:F

.field private lastTimeXViews:F

.field public lastTopOffset:I

.field private lastTotalCommentWidth:I

.field public lastUseTranscribeButton:Z

.field private lastViewsCount:I

.field private lastViewsLayout:Landroid/text/StaticLayout;

.field public messageEntering:Z

.field private moveCaption:Z

.field public photoImageFromCenterX:F

.field public photoImageFromCenterY:F

.field public photoImageFromHeight:F

.field public photoImageFromWidth:F

.field public shouldAnimateTimeX:Z

.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

.field public toDeltaLeft:F

.field public toDeltaRight:F

.field public transformGroupToSingleMessage:Z

.field private transitionBotButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;",
            ">;"
        }
    .end annotation
.end field

.field public updatePhotoImageX:Z

.field public wasDraw:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 20958
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 21029
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageRoundRadius:[I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21030
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionEnterProgress:F

    .line 21037
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->changePinnedBottomProgress:F

    .line 21041
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    .line 21089
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 21090
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    .line 21091
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transitionBotButtons:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 21103
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastStatusDrawableParams:I

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/text/StaticLayout;

    .line 21133
    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    new-array p1, p1, [Landroid/text/StaticLayout;

    .line 21134
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatingForwardedNameLayout:[Landroid/text/StaticLayout;

    return-void
.end method

.method static synthetic access$15400(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMediaOffsetY:Z

    return p0
.end method

.method static synthetic access$15500(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromMediaOffsetY:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateButton:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromButtonX:F

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromButtonY:F

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Ljava/util/ArrayList;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextBlocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawMenuDrawable:Z

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextXOffset:F

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyTextLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromReplyTextHeight:F

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateComments:Z

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentsLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTotalCommentWidth:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Ljava/util/ArrayList;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transitionBotButtons:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSign:Z

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateNameX:F

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->moveCaption:Z

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmojiReply:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentX:F

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawCommentNumber:Z

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentDrawUnread:Z

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentUnreadX:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentArrowX:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawTimeOnMedia:Z

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedWidthDiff:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplies:Z

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 20958
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePinned:Z

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRepliesLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXReplies:F

    return p0
.end method

.method static synthetic access$8102(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;F)F
    .locals 0

    .line 20958
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXReplies:F

    return p1
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 20958
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXViews:F

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 20958
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateViewsLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$8402(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;F)F
    .locals 0

    .line 20958
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXViews:F

    return p1
.end method


# virtual methods
.method public animateChange()Z
    .locals 24

    move-object/from16 v0, p0

    .line 21248
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 21253
    :cond_0
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMessageText:Z

    .line 21254
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_a

    .line 21256
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_8

    move v1, v2

    .line 21257
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 21258
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21259
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-nez v6, :cond_2

    move-object v6, v4

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    if-nez v3, :cond_3

    if-nez v6, :cond_8

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v6, :cond_8

    .line 21260
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 21264
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v6, :cond_6

    .line 21265
    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v3, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->replaceLayout(Landroid/text/Layout;Landroid/text/Layout;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    move v1, v5

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v2

    :goto_4
    if-nez v1, :cond_9

    .line 21273
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMessageText:Z

    .line 21274
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextBlocks:Ljava/util/ArrayList;

    .line 21275
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTextXOffset:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextXOffset:F

    .line 21276
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v2, v3, v6, v1, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 21277
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-static {v2, v1, v3, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move v1, v5

    goto :goto_5

    .line 21280
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-static {v2, v1, v3, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    :cond_a
    move v1, v2

    .line 21283
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

    if-eq v3, v6, :cond_d

    if-eqz v3, :cond_b

    .line 21284
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_6

    :cond_b
    move-object v3, v4

    .line 21285
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_7

    :cond_c
    move-object v6, v4

    .line 21286
    :goto_7
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 21287
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingReplyTextHeight:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromReplyTextHeight:F

    .line 21288
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyTextLayout:Landroid/text/StaticLayout;

    .line 21289
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastReplyTextXOffset:I

    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyTextOffset:F

    const/4 v6, 0x0

    .line 21290
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v8, 0x0

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmojiReply:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v10, 0x1

    new-array v11, v5, [Landroid/text/Layout;

    aput-object v1, v11, v2

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmojiReply:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move v1, v5

    .line 21294
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15700(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingEdited:Z

    if-nez v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17500(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 21295
    sget v3, Lorg/telegram/messenger/R$string;->EditedMessage:I

    const-string v6, "EditedMessage"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 21296
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17500(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 21297
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_f

    if-nez v7, :cond_e

    .line 21300
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_timePaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$18000(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    const/16 v15, 0x64

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int v10, v7, v8

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v1

    move-object v8, v3

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedLayout:Landroid/text/StaticLayout;

    .line 21301
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 21302
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21303
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v6, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21304
    new-instance v6, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v6, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 21305
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->chat_timePaint:Landroid/text/TextPaint;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$18000(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int v19, v6, v7

    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 21306
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->timeWidth:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    sub-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedWidthDiff:I

    goto :goto_8

    .line 21308
    :cond_e
    iput v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedWidthDiff:I

    .line 21309
    iput-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedLayout:Landroid/text/StaticLayout;

    .line 21310
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 21312
    :goto_8
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    .line 21313
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    .line 21314
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeX:I

    .line 21315
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->shouldAnimateTimeX:Z

    move v1, v5

    .line 21318
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    goto :goto_9

    .line 21319
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15700(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingEdited:Z

    if-eqz v3, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17500(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 21320
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 21321
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->timeWidth:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    sub-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedWidthDiff:I

    .line 21322
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    .line 21323
    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    .line 21324
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeX:I

    .line 21325
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->shouldAnimateTimeX:Z

    move v1, v5

    .line 21329
    :cond_11
    :goto_9
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawBackground:Z

    .line 21330
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16900(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBackground:Z

    if-eq v3, v6, :cond_12

    .line 21331
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawBackground:Z

    move v1, v5

    .line 21335
    :cond_12
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSmallImage:Z

    .line 21336
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15900(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSmallImage:Z

    if-eq v3, v6, :cond_13

    .line 21337
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSmallImage:Z

    .line 21338
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageW:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->photoImageFromWidth:F

    .line 21339
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageH:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->photoImageFromHeight:F

    .line 21340
    iget v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageX:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    add-float/2addr v6, v1

    iput v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->photoImageFromCenterX:F

    .line 21341
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageY:F

    div-float/2addr v3, v7

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->photoImageFromCenterY:F

    move v1, v5

    .line 21345
    :cond_13
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkAbove:Z

    .line 21346
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v6, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewAbove:Z

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkAbove:Z

    if-eq v6, v7, :cond_14

    .line 21347
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkAbove:Z

    move v1, v5

    .line 21351
    :cond_14
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkPreviewHeight:Z

    .line 21352
    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$18100(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewHeight:I

    iget v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewHeight:I

    if-eq v3, v6, :cond_15

    .line 21353
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkPreviewHeight:Z

    .line 21354
    iput v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromLinkPreviewHeight:I

    move v1, v5

    .line 21358
    :cond_15
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateUseTranscribeButton:Z

    .line 21359
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10700(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastUseTranscribeButton:Z

    if-eq v3, v6, :cond_16

    .line 21360
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateUseTranscribeButton:Z

    move v1, v5

    .line 21364
    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-eq v6, v7, :cond_20

    if-nez v7, :cond_17

    move-object v3, v4

    goto :goto_a

    .line 21365
    :cond_17
    iget-object v3, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21366
    :goto_a
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-nez v6, :cond_18

    move-object v6, v4

    goto :goto_b

    :cond_18
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_b
    if-nez v6, :cond_19

    move v7, v5

    goto :goto_c

    :cond_19
    move v7, v2

    :goto_c
    if-nez v3, :cond_1a

    move v8, v5

    goto :goto_d

    :cond_1a
    move v8, v2

    :goto_d
    if-ne v7, v8, :cond_1d

    if-eqz v3, :cond_1b

    .line 21367
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_e

    .line 21374
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateCaptionLayout()V

    .line 21375
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15800(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    cmpl-float v3, v3, v6

    if-nez v3, :cond_1c

    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->captionY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_22

    .line 21376
    :cond_1c
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->moveCaption:Z

    .line 21377
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromX:F

    .line 21378
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromY:F

    goto :goto_11

    .line 21368
    :cond_1d
    :goto_e
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplaceCaptionLayout:Z

    .line 21369
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    .line 21370
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v1, :cond_1e

    move-object v1, v4

    goto :goto_f

    :cond_1e
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    :goto_f
    invoke-static {v2, v3, v4, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 21371
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-nez v6, :cond_1f

    move-object v6, v4

    goto :goto_10

    :cond_1f
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    :goto_10
    invoke-static {v2, v1, v3, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    goto :goto_11

    :cond_20
    if-eqz v6, :cond_22

    if-eqz v7, :cond_22

    .line 21383
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateCaptionLayout()V

    .line 21384
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15800(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v6

    cmpl-float v3, v3, v6

    if-nez v3, :cond_21

    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->captionY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_22

    .line 21385
    :cond_21
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->moveCaption:Z

    .line 21386
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromX:F

    .line 21387
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromY:F

    :goto_11
    move v1, v5

    .line 21391
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10900(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28

    .line 21392
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10900(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_24

    .line 21393
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBotButtonsChanged:Z

    .line 21395
    :cond_24
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBotButtonsChanged:Z

    if-nez v3, :cond_27

    move v3, v2

    .line 21396
    :goto_12
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10900(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_27

    .line 21397
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10900(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .line 21398
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .line 21399
    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1500(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1500(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v9

    if-ne v8, v9, :cond_26

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1600(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$1600(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I

    move-result v9

    if-ne v8, v9, :cond_26

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$3400(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Landroid/text/StaticLayout;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->access$3400(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Landroid/text/StaticLayout;

    move-result-object v7

    if-eq v6, v7, :cond_25

    goto :goto_13

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 21400
    :cond_26
    :goto_13
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBotButtonsChanged:Z

    .line 21405
    :cond_27
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBotButtonsChanged:Z

    if-eqz v3, :cond_28

    .line 21406
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transitionBotButtons:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21410
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    const/4 v6, 0x5

    if-eq v3, v6, :cond_29

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_29

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    if-ne v3, v5, :cond_2b

    .line 21411
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17000(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    int-to-float v3, v3

    iget v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonX:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2a

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17100(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    int-to-float v3, v3

    iget v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2b

    .line 21412
    :cond_2a
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromButtonX:F

    .line 21413
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonY:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromButtonY:F

    .line 21414
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateButton:Z

    move v1, v5

    .line 21419
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17200(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    iget v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastMediaOffsetY:I

    if-eq v3, v6, :cond_2c

    .line 21420
    iput v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromMediaOffsetY:I

    .line 21421
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMediaOffsetY:Z

    move v1, v5

    .line 21427
    :cond_2c
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastIsPinned:Z

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinned:Z

    if-eq v3, v7, :cond_2d

    .line 21428
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePinned:Z

    .line 21431
    iput-object v4, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    move v1, v5

    move v3, v1

    goto :goto_14

    :cond_2d
    move v3, v2

    .line 21434
    :goto_14
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesLayout:Landroid/text/StaticLayout;

    if-nez v7, :cond_2e

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16600(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v6

    if-eqz v6, :cond_2f

    :cond_2e
    iget v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesCount:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10300(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    if-eq v6, v7, :cond_2f

    .line 21435
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRepliesLayout:Landroid/text/StaticLayout;

    .line 21436
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplies:Z

    .line 21439
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object v4, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    move v1, v5

    move v3, v1

    .line 21442
    :cond_2f
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_30

    iget v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsCount:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    if-eq v6, v7, :cond_30

    .line 21443
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateViewsLayout:Landroid/text/StaticLayout;

    .line 21446
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object v4, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    move v1, v5

    move v3, v1

    .line 21449
    :cond_30
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11600(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v6

    if-eqz v6, :cond_32

    iget v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentsCount:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10300(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    if-eq v6, v7, :cond_32

    .line 21450
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11600(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 21451
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentsLayout:Landroid/text/StaticLayout;

    goto :goto_15

    .line 21453
    :cond_31
    iput-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentsLayout:Landroid/text/StaticLayout;

    .line 21455
    :goto_15
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTotalCommentWidth:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTotalCommentWidth:I

    .line 21456
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentX:F

    .line 21457
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentArrowX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentArrowX:I

    .line 21458
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentUnreadX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentUnreadX:I

    .line 21459
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentDrawUnread:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentDrawUnread:Z

    .line 21460
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawCommentNumber:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawCommentNumber:Z

    .line 21461
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateComments:Z

    move v1, v5

    .line 21465
    :cond_32
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastSignMessage:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16800(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 21466
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSign:Z

    .line 21467
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12200(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateNameX:F

    move v1, v5

    .line 21471
    :cond_33
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawTime:Z

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17300(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v7

    if-ne v6, v7, :cond_34

    .line 21472
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingTimeAlpha:Z

    .line 21473
    iput-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateViewsLayout:Landroid/text/StaticLayout;

    :goto_16
    move v1, v5

    goto :goto_17

    .line 21475
    :cond_34
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastShouldDrawTimeOnMedia:Z

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawTimeOnMedia()Z

    move-result v6

    if-eq v4, v6, :cond_35

    .line 21476
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    .line 21477
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawTimeOnMedia:Z

    .line 21478
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeX:I

    .line 21479
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 21480
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    goto :goto_16

    :cond_35
    if-nez v3, :cond_36

    .line 21482
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v5, :cond_37

    .line 21483
    :cond_36
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->shouldAnimateTimeX:Z

    .line 21484
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    .line 21485
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeX:I

    .line 21486
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXViews:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXViews:F

    .line 21487
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXReplies:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXReplies:F

    .line 21488
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXPinned:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXPinned:F

    .line 21491
    :cond_37
    :goto_17
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastShouldDrawMenuDrawable:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17600(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eq v3, v4, :cond_38

    .line 21492
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawMenuDrawable:Z

    .line 21495
    :cond_38
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastLocatinIsExpired:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$300(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eq v3, v4, :cond_39

    .line 21496
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLocationIsExpired:Z

    .line 21499
    :cond_39
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastIsPlayingRound:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17700(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eq v3, v4, :cond_3a

    .line 21500
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    move v1, v5

    .line 21504
    :cond_3a
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextY:F

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v6, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->textY:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_3b

    .line 21505
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateText:Z

    .line 21506
    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTextY:F

    move v1, v5

    .line 21510
    :cond_3b
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewY:I

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17800(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-eq v3, v4, :cond_3c

    .line 21511
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkPreviewY:Z

    .line 21512
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewY:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromLinkPreviewY:I

    move v1, v5

    .line 21516
    :cond_3c
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 21517
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedName:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v4

    if-eq v3, v4, :cond_3d

    .line 21518
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardedLayout:Z

    .line 21519
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatingForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    aget-object v4, v3, v2

    aput-object v4, v1, v2

    .line 21520
    aget-object v3, v3, v5

    aput-object v3, v1, v5

    .line 21521
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardNameX:F

    .line 21522
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardedNamesOffset:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardedNamesOffset:I

    .line 21523
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameWidth:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardNameWidth:I

    move v1, v5

    .line 21527
    :cond_3d
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$18200(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 21528
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateChange()Z

    move-result v3

    if-eqz v3, :cond_3e

    move v1, v5

    .line 21531
    :cond_3e
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 21532
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$12900(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom:Z

    if-eqz v4, :cond_3f

    const/4 v2, 0x2

    :cond_3f
    rsub-int/lit8 v2, v2, 0x1c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 21533
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-nez v4, :cond_40

    .line 21534
    iget v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 21536
    :cond_40
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawRoundVideoDotY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_41

    .line 21537
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRoundVideoDotY:Z

    .line 21538
    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromRoundVideoDotY:F

    move v1, v5

    .line 21543
    :cond_41
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_42

    iget v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartX:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawReplyY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_42

    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_42

    .line 21545
    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromReplyY:F

    goto :goto_18

    :cond_42
    move v5, v1

    :goto_18
    return v5
.end method

.method public createStatusDrawableParams()I
    .locals 7

    .line 21630
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 21636
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 21640
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v3

    move v0, v4

    move v3, v0

    move v5, v3

    goto :goto_3

    .line 21644
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21645
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_3
    move v0, v4

    move v3, v0

    move v5, v3

    :goto_1
    move v6, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v3

    move v0, v4

    move v3, v0

    move v6, v3

    :goto_3
    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    or-int/2addr v0, v3

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    or-int/2addr v0, v2

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    move v1, v4

    :goto_6
    or-int/2addr v0, v1

    return v0

    .line 21656
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    move v3, v4

    .line 21657
    :cond_a
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v0

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    move v2, v4

    :goto_8
    if-eqz v0, :cond_c

    goto :goto_9

    :cond_c
    move v1, v4

    :goto_9
    or-int v0, v2, v1

    return v0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 21553
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    return-void
.end method

.method public recordDrawingState()V
    .locals 5

    const/4 v0, 0x1

    .line 21146
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    .line 21147
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15600(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageX:F

    .line 21148
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15600(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageY:F

    .line 21149
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15600(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageW:F

    .line 21150
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15600(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageH:F

    .line 21151
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15600(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v1

    .line 21152
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageRoundRadius:[I

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21153
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->currentBackgroundDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v1, :cond_0

    .line 21154
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 21156
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    .line 21157
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15700(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingEdited:Z

    .line 21159
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15800(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    .line 21160
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->captionY:F

    iput v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    .line 21162
    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    .line 21163
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 21164
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10900(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 21165
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10900(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21167
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15900(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSmallImage:Z

    .line 21168
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewHeight:I

    iput v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewHeight:I

    .line 21169
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewAbove:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkAbove:Z

    .line 21171
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11600(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21172
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10300(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentsCount:I

    .line 21173
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16000(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTotalCommentWidth:I

    .line 21174
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$11600(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentLayout:Landroid/text/StaticLayout;

    .line 21175
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16100(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentArrowX:I

    .line 21176
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16200(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentUnreadX:I

    .line 21177
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16300(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentDrawUnread:Z

    .line 21178
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentX:F

    .line 21179
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16500(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawCommentNumber:Z

    .line 21182
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10300(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesCount:I

    .line 21183
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsCount:I

    .line 21184
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16600(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesLayout:Landroid/text/StaticLayout;

    .line 21185
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16700(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsLayout:Landroid/text/StaticLayout;

    .line 21187
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinned:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastIsPinned:Z

    .line 21189
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16800(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastSignMessage:Ljava/lang/String;

    .line 21191
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$16900(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBackground:Z

    .line 21192
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$10700(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastUseTranscribeButton:Z

    .line 21194
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17000(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonX:F

    .line 21195
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17100(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonY:F

    .line 21196
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17200(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastMediaOffsetY:I

    .line 21198
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17300(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawTime:Z

    .line 21199
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17400(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    .line 21200
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17500(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeLayout:Landroid/text/StaticLayout;

    .line 21201
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->timeWidth:I

    iput v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    .line 21203
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawTimeOnMedia()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastShouldDrawTimeOnMedia:Z

    .line 21204
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTopMediaOffset()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTopOffset:I

    .line 21205
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17600(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastShouldDrawMenuDrawable:Z

    .line 21207
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$300(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastLocatinIsExpired:Z

    .line 21208
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17700(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastIsPlayingRound:Z

    .line 21210
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->textY:I

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextY:F

    .line 21211
    iget v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->textX:I

    .line 21212
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17800(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewY:I

    .line 21214
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9200(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v2

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    .line 21215
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9200(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 21216
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedName:Z

    .line 21217
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14000(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameX:F

    .line 21218
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13100(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardedNamesOffset:I

    .line 21219
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14300(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameWidth:I

    .line 21220
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundLeft()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastBackgroundLeft:I

    .line 21221
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->currentBackgroundDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_3

    .line 21222
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastBackgroundRight:I

    .line 21224
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTextXOffset:F

    .line 21226
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$17900(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingReplyTextHeight:F

    .line 21227
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

    .line 21228
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextOffset:I

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastReplyTextXOffset:I

    .line 21230
    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->recordDrawingState()V

    .line 21231
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_4

    .line 21232
    iget v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartY:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawReplyY:F

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 21234
    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawReplyY:F

    :goto_0
    return-void
.end method

.method public recordDrawingStatePreview()V
    .locals 3

    .line 21239
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9200(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    .line 21240
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$9200(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    .line 21241
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$700(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedName:Z

    .line 21242
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14000(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameX:F

    .line 21243
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$13100(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardedNamesOffset:I

    .line 21244
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$14300(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameWidth:I

    return-void
.end method

.method public resetAnimation()V
    .locals 7

    const/4 v0, 0x0

    .line 21557
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    .line 21558
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePinned:Z

    .line 21559
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    const/4 v1, 0x0

    .line 21561
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 21562
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 21563
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    .line 21564
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 21565
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaLeft:F

    .line 21566
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaRight:F

    .line 21567
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 21568
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15600(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    iget v4, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    iget v5, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    iget v6, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 21570
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-eqz v2, :cond_1

    .line 21571
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$15600(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 21573
    :cond_1
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    .line 21574
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    .line 21575
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    .line 21576
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    .line 21577
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 21578
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->changePinnedBottomProgress:F

    .line 21579
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionEnterProgress:F

    .line 21580
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    .line 21581
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 21582
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMessageText:Z

    const/4 v1, 0x0

    .line 21583
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextBlocks:Ljava/util/ArrayList;

    .line 21584
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedLayout:Landroid/text/StaticLayout;

    .line 21585
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 21586
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    .line 21587
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplaceCaptionLayout:Z

    .line 21588
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    .line 21589
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    .line 21590
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 21591
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 21592
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->moveCaption:Z

    .line 21593
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingTimeAlpha:Z

    .line 21594
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transitionBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 21595
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateButton:Z

    .line 21596
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMediaOffsetY:Z

    .line 21597
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyTextLayout:Landroid/text/StaticLayout;

    .line 21599
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplies:Z

    .line 21600
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRepliesLayout:Landroid/text/StaticLayout;

    .line 21602
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateComments:Z

    .line 21603
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentsLayout:Landroid/text/StaticLayout;

    .line 21604
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateViewsLayout:Landroid/text/StaticLayout;

    .line 21605
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawTimeOnMedia:Z

    .line 21606
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawMenuDrawable:Z

    .line 21607
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->shouldAnimateTimeX:Z

    .line 21608
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawBackground:Z

    .line 21609
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSign:Z

    .line 21610
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSmallImage:Z

    .line 21611
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkAbove:Z

    .line 21612
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingTimeAlpha:Z

    .line 21613
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLocationIsExpired:Z

    .line 21614
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    .line 21615
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateText:Z

    .line 21616
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkPreviewY:Z

    .line 21617
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardedLayout:Z

    .line 21618
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatingForwardedNameLayout:[Landroid/text/StaticLayout;

    aput-object v1, v2, v0

    const/4 v3, 0x1

    .line 21619
    aput-object v1, v2, v3

    .line 21620
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRoundVideoDotY:Z

    .line 21622
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resetAnimation()V

    return-void
.end method

.method public supportChangeAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
