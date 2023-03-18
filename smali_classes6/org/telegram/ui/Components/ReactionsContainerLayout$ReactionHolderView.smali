.class public final Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;
.super Landroid/widget/FrameLayout;
.source "ReactionsContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReactionHolderView"
.end annotation


# instance fields
.field public currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public drawSelected:Z

.field public enterImageView:Lorg/telegram/ui/Components/BackupImageView;

.field public hasEnterAnimation:Z

.field private isEnter:Z

.field longPressRunnable:Ljava/lang/Runnable;

.field public loopImageView:Lorg/telegram/ui/Components/BackupImageView;

.field playRunnable:Ljava/lang/Runnable;

.field public position:I

.field private preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field pressed:Z

.field public pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field pressedX:F

.field pressedY:F

.field public selected:Z

.field public shouldSwitchToLoopView:Z

.field public sideScale:F

.field public switchedToLoopView:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field touchable:Z

.field public waitingAnimation:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;Z)V
    .locals 1

    .line 1262
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 1263
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1226
    new-instance p3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p3}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1228
    iput p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    const/4 p3, 0x1

    .line 1234
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    .line 1238
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$1;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    .line 1468
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$4;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->longPressRunnable:Ljava/lang/Runnable;

    .line 1480
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->touchable:Z

    .line 1265
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Landroid/content/Context;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1296
    new-instance p3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p3, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1297
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 1298
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 1300
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Landroid/content/Context;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1307
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p2, 0x22

    const/16 p3, 0x11

    invoke-static {p2, p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1308
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p2, p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1309
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p2, p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1310
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 1311
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)Z
    .locals 0

    .line 1221
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V
    .locals 0

    .line 1221
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V

    return-void
.end method

.method private setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V
    .locals 5

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->updateImage(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void

    .line 1320
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->position:I

    .line 1321
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 1322
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1323
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    .line 1324
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2100(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/16 p2, 0x2008

    invoke-static {p2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    .line 1325
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 1326
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->updateImage(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 1328
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1329
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1330
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    goto :goto_1

    .line 1333
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1334
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1335
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 p2, 0x4

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {p1, p2, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 1336
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1337
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1338
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 p2, 0x3

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {p1, p2, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 1339
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1340
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1342
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1343
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->shouldSwitchToLoopView:Z

    .line 1344
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    const/16 p2, 0x8

    if-nez p1, :cond_6

    .line 1345
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    goto :goto_3

    .line 1349
    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    .line 1350
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1351
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz p1, :cond_7

    .line 1354
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/16 v0, 0x1a

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1355
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4

    .line 1357
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/16 v0, 0x22

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1358
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_4
    return-void
.end method

.method private updateImage(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1363
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1364
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v1, :cond_5

    .line 1366
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "windowBackgroundWhiteGrayIcon"

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v2

    const/16 v3, 0x2008

    .line 1367
    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 1368
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1369
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v3, :cond_0

    move-object v10, v4

    goto :goto_0

    :cond_0
    move-object v10, v2

    :goto_0
    const-wide/16 v11, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v15, 0x0

    const-string v7, "60_60_firstframe"

    const-string v13, "tgs"

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 1371
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->appear_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    const-string v7, "30_30_nolimit"

    const-string v13, "tgs"

    move-object v10, v2

    move-object/from16 v14, p1

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1372
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v3, :cond_2

    move-object v10, v4

    goto :goto_1

    :cond_2
    move-object v10, v2

    :goto_1
    const-wide/16 v11, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v15, 0x0

    const-string v7, "60_60_firstframe"

    const-string v13, "tgs"

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_3

    .line 1375
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->appear_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    const-string v7, "30_30_nolimit"

    const-string v13, "tgs"

    move-object v10, v2

    move-object/from16 v14, p1

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1376
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v3, :cond_4

    move-object v10, v4

    goto :goto_2

    :cond_4
    move-object v10, v2

    :goto_2
    const-wide/16 v11, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v15, 0x0

    const-string v7, "60_60_pcache"

    const-string v13, "tgs"

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1378
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    const-string v7, "60_60_pcache"

    const-string v13, "tgs"

    move-object v10, v2

    move-object/from16 v14, p1

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1380
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 1381
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1521
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    if-eqz v0, :cond_0

    .line 1522
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    shr-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    shr-int/2addr v3, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2900(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1524
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1525
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-nez v0, :cond_1

    .line 1526
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_2
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1531
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1388
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1389
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 1390
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1395
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1250
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_1

    .line 1252
    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 1256
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrCustomEmoji:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1484
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->touchable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1487
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    return v1

    .line 1490
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1491
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    .line 1492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedX:F

    .line 1493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedY:F

    .line 1494
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1498
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    .line 1499
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 1500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 1501
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$100(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2500(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2600(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2702(Lorg/telegram/ui/Components/ReactionsContainerLayout;Z)Z

    .line 1503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-wide v5, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    .line 1504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    .line 1505
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2600(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2500(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F

    move-result v4

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1, p0, v3, v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    .line 1509
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2700(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1510
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2800(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    .line 1513
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1514
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    :cond_a
    return v2
.end method

.method public play(I)Z
    .locals 6

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 1401
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 1402
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    .line 1403
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-nez p1, :cond_0

    .line 1404
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1405
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1406
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_0
    return v3

    .line 1410
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1411
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v0, :cond_5

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    if-nez v0, :cond_3

    .line 1413
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    if-nez p1, :cond_2

    .line 1415
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->waitingAnimation:Z

    .line 1416
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 1417
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 1418
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1421
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->waitingAnimation:Z

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return v2

    .line 1428
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1429
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 1431
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1432
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    .line 1434
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    if-nez v0, :cond_6

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->durationScale:F

    mul-float p1, p1, v1

    float-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1438
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    :cond_6
    :goto_1
    return v3
.end method

.method public resetAnimation()V
    .locals 4

    .line 1445
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1447
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    goto :goto_0

    .line 1452
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 1455
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1456
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1457
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1459
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    .line 1461
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1465
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    return-void
.end method
