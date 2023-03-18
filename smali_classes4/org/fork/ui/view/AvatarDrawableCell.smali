.class public final Lorg/fork/ui/view/AvatarDrawableCell;
.super Landroid/widget/FrameLayout;
.source "AvatarDrawableCell.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAvatarDrawableCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AvatarDrawableCell.kt\norg/fork/ui/view/AvatarDrawableCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,311:1\n304#2,2:312\n1#3:314\n*S KotlinDebug\n*F\n+ 1 AvatarDrawableCell.kt\norg/fork/ui/view/AvatarDrawableCell\n*L\n100#1:312,2\n*E\n"
.end annotation


# instance fields
.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private backgroundColorKey:Ljava/lang/String;

.field private final counterView$delegate:Lkotlin/Lazy;

.field private final currentAccount:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private dialogId:J

.field private final imageView$delegate:Lkotlin/Lazy;

.field private innerProgress:F

.field private lastUnreadCount:I

.field private final pinnedImageView$delegate:Lkotlin/Lazy;

.field private progressStage:I

.field private final recentChatsController:Lorg/fork/controller/RecentChatsController;

.field private showCallProgress:F

.field private showMentionProgress:F

.field private showOnlineProgress:F

.field private showReactionProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    .line 31
    new-instance p1, Lorg/fork/ui/view/AvatarDrawableCell$imageView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/AvatarDrawableCell$imageView$2;-><init>(Lorg/fork/ui/view/AvatarDrawableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->imageView$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p1, Lorg/fork/ui/view/AvatarDrawableCell$pinnedImageView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/AvatarDrawableCell$pinnedImageView$2;-><init>(Lorg/fork/ui/view/AvatarDrawableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->pinnedImageView$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lorg/fork/ui/view/AvatarDrawableCell$counterView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/AvatarDrawableCell$counterView$2;-><init>(Lorg/fork/ui/view/AvatarDrawableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->counterView$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string/jumbo p1, "windowBackgroundGray"

    .line 39
    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->backgroundColorKey:Ljava/lang/String;

    const/4 p1, 0x5

    .line 44
    iput p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->progressStage:I

    .line 46
    sget-object p1, Lorg/fork/controller/RecentChatsController;->Companion:Lorg/fork/controller/RecentChatsController$Companion;

    invoke-virtual {p1, p2}, Lorg/fork/controller/RecentChatsController$Companion;->getInstance(I)Lorg/fork/controller/RecentChatsController;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lorg/fork/controller/RecentChatsController;

    .line 49
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    const/16 p2, 0x28

    const/16 v0, 0x11

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x14

    const/16 v1, 0x14

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    const/4 p2, -0x2

    const/16 v0, 0x55

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->updateColors()V

    return-void
.end method

.method public static final synthetic access$initBackupImageView(Lorg/fork/ui/view/AvatarDrawableCell;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->initBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initCounterView(Lorg/fork/ui/view/AvatarDrawableCell;)Lorg/telegram/ui/Components/CounterView;
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->initCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPinnedImageView(Lorg/fork/ui/view/AvatarDrawableCell;)Landroid/widget/ImageView;
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->initPinnedImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private final currentChatOrUser()V
    .locals 4

    .line 144
    iget-wide v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 145
    iget v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 146
    iput-object v1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_0

    .line 147
    :cond_0
    iget-wide v2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 149
    iput-object v1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    :cond_1
    :goto_0
    return-void
.end method

.method private final drawCount(I)V
    .locals 9

    .line 290
    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lorg/fork/controller/RecentChatsController;

    sget-object v1, Lorg/fork/enums/DrawStatusType;->UNREAD_COUNT_CHATS:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v0, v1}, Lorg/fork/controller/RecentChatsController;->isDrawStatusType(Lorg/fork/enums/DrawStatusType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 294
    iget v3, p0, Lorg/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    if-eq v3, p1, :cond_3

    .line 295
    iput p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    .line 296
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v3, 0x5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr p1, v3

    .line 297
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 298
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object v5

    iget v6, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-virtual {v6, v7, v8, v0}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v0

    int-to-float v3, v3

    int-to-float p1, p1

    invoke-virtual {v5, v1, v0, v3, p1}, Lorg/telegram/ui/Components/CounterView;->setCountResentChats(ZZFF)V

    .line 299
    iget p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    iput v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    .line 300
    :cond_1
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    iget v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    .line 301
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    iget v3, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-virtual {v3, v4, v5, v0}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v0

    int-to-float v3, v2

    invoke-virtual {p1, v1, v0, v3, v3}, Lorg/telegram/ui/Components/CounterView;->setCountResentChats(ZZFF)V

    .line 307
    iput v2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    .line 308
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final drawMention(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 6

    .line 269
    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lorg/fork/controller/RecentChatsController;

    sget-object v1, Lorg/fork/enums/DrawStatusType;->MENTIONS:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v0, v1}, Lorg/fork/controller/RecentChatsController;->isDrawStatusType(Lorg/fork/enums/DrawStatusType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 273
    :goto_1
    iput p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->showMentionProgress:F

    .line 274
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 276
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v0

    int-to-float v3, v1

    const/16 v4, 0x14

    .line 278
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {p2, v2, v3, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 282
    iget v3, p0, Lorg/fork/ui/view/AvatarDrawableCell;->showMentionProgress:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 283
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x41380000    # 11.5f

    mul-float v5, v3, v4

    mul-float v3, v3, v4

    invoke-virtual {p1, p2, v5, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 284
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p2, v3, v1, v2, v0}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 285
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawOnline(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xf

    .line 154
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    .line 155
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 157
    iget-object v5, v0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const-string v6, "chats_onlineCircle"

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eqz v5, :cond_5

    iget-object v5, v0, Lorg/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lorg/fork/controller/RecentChatsController;

    sget-object v12, Lorg/fork/enums/DrawStatusType;->ONLINE_USER:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v5, v12}, Lorg/fork/controller/RecentChatsController;->isDrawStatusType(Lorg/fork/enums/DrawStatusType;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 158
    iget-object v3, v0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const-string v5, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.User"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_2

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_0

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v12, v0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v12

    if-gt v5, v12, :cond_1

    :cond_0
    iget v5, v0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 161
    :goto_1
    iput v7, v0, Lorg/fork/ui/view/AvatarDrawableCell;->showOnlineProgress:F

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v3, :cond_a

    .line 163
    iget v3, v0, Lorg/fork/ui/view/AvatarDrawableCell;->showOnlineProgress:F

    cmpg-float v5, v3, v8

    if-nez v5, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_a

    int-to-float v4, v4

    int-to-float v2, v2

    .line 164
    invoke-virtual {v1, v3, v3, v4, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 165
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/fork/ui/view/AvatarDrawableCell;->backgroundColorKey:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x7

    .line 166
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8

    .line 171
    :cond_5
    iget-object v5, v0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_a

    iget-object v5, v0, Lorg/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lorg/fork/controller/RecentChatsController;

    sget-object v12, Lorg/fork/enums/DrawStatusType;->LIVE_VIDEO:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v5, v12}, Lorg/fork/controller/RecentChatsController;->isDrawStatusType(Lorg/fork/enums/DrawStatusType;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 172
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 173
    iget-object v12, v0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-string v13, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.Chat"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v13, :cond_6

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_7

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    .line 174
    :goto_4
    iput v13, v0, Lorg/fork/ui/view/AvatarDrawableCell;->showCallProgress:F

    if-eqz v12, :cond_a

    .line 176
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const-string/jumbo v13, "windowBackgroundWhite"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v4

    int-to-float v2, v2

    .line 177
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v14, v0, Lorg/fork/ui/view/AvatarDrawableCell;->showCallProgress:F

    mul-float v3, v3, v14

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v2, v3, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 178
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x8

    .line 179
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v14, v0, Lorg/fork/ui/view/AvatarDrawableCell;->showCallProgress:F

    mul-float v6, v6, v14

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v2, v6, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 180
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v6, 0x20

    .line 183
    invoke-static {v6}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_8

    const v12, 0x3f266666    # 0.65f

    .line 184
    iput v12, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    .line 186
    :cond_8
    iget v12, v0, Lorg/fork/ui/view/AvatarDrawableCell;->progressStage:I

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x4

    packed-switch v12, :pswitch_data_0

    .line 216
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float v12, v12, v15

    sub-float v12, v9, v12

    .line 217
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto/16 :goto_5

    .line 212
    :pswitch_0
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v9, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float v14, v14, v9

    add-float/2addr v12, v14

    .line 213
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto/16 :goto_6

    .line 208
    :pswitch_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v14, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float v12, v12, v14

    sub-float v12, v9, v12

    .line 209
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_5

    .line 204
    :pswitch_2
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float v12, v12, v15

    add-float/2addr v12, v9

    .line 205
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_6

    .line 200
    :pswitch_3
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float v12, v12, v15

    sub-float v12, v9, v12

    .line 201
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_5

    .line 196
    :pswitch_4
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v14, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float v12, v12, v14

    add-float/2addr v12, v9

    .line 197
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_6

    .line 192
    :pswitch_5
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v14, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float v12, v12, v14

    sub-float v12, v9, v12

    .line 193
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    :goto_5
    mul-float v14, v14, v15

    add-float/2addr v9, v14

    goto :goto_7

    .line 188
    :pswitch_6
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float v12, v12, v15

    add-float/2addr v12, v9

    .line 189
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    :goto_6
    mul-float v14, v14, v15

    sub-float/2addr v9, v14

    .line 221
    :goto_7
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v14, v4, v14

    int-to-float v14, v14

    sub-float v15, v2, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v3, v4, v16

    int-to-float v3, v3

    add-float/2addr v12, v2

    invoke-virtual {v5, v14, v15, v3, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 222
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v12, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 224
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v4, v3

    int-to-float v3, v3

    sub-float v12, v2, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v14, v4, v14

    int-to-float v14, v14

    add-float/2addr v2, v9

    invoke-virtual {v5, v3, v12, v14, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 225
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v9, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 227
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-virtual {v5, v3, v12, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 228
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 230
    invoke-static {v6}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 231
    iget v1, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    const v2, 0x3d23d70a    # 0.04f

    add-float/2addr v1, v2

    iput v1, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_9

    .line 233
    iput v8, v0, Lorg/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    .line 234
    iget v1, v0, Lorg/fork/ui/view/AvatarDrawableCell;->progressStage:I

    add-int/2addr v1, v11

    iput v1, v0, Lorg/fork/ui/view/AvatarDrawableCell;->progressStage:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_9

    const/4 v1, 0x0

    .line 236
    iput v1, v0, Lorg/fork/ui/view/AvatarDrawableCell;->progressStage:I

    .line 239
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_a
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final drawReaction(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 7

    .line 246
    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lorg/fork/controller/RecentChatsController;

    sget-object v1, Lorg/fork/enums/DrawStatusType;->REACTION:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v0, v1}, Lorg/fork/controller/RecentChatsController;->isDrawStatusType(Lorg/fork/enums/DrawStatusType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 251
    :goto_1
    iput p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->showReactionProgress:F

    .line 252
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 254
    iget v2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    const/4 v3, 0x5

    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 255
    iget v3, p0, Lorg/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    if-nez v3, :cond_3

    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    :cond_3
    int-to-float v3, v0

    int-to-float v4, v2

    const/16 v5, 0x14

    .line 256
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {p2, v3, v4, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 257
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 260
    iget v4, p0, Lorg/fork/ui/view/AvatarDrawableCell;->showReactionProgress:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 261
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v5, 0x41380000    # 11.5f

    mul-float v6, v4, v5

    mul-float v4, v4, v5

    invoke-virtual {p1, p2, v6, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 262
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/fork/ui/view/AvatarDrawableCell;->showReactionProgress:F

    sub-float/2addr v1, v3

    const/16 v3, 0xff

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 263
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40600000    # 3.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v2, v1

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p2, v0, v2, v3, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 264
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final getCounterView()Lorg/telegram/ui/Components/CounterView;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->counterView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/CounterView;

    return-object v0
.end method

.method private final getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method private final getPinnedImageView()Landroid/widget/ImageView;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->pinnedImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final initBackupImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 2

    .line 135
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initCounterView()Lorg/telegram/ui/Components/CounterView;
    .locals 3

    .line 141
    new-instance v0, Lorg/telegram/ui/Components/CounterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method private final initPinnedImageView()Landroid/widget/ImageView;
    .locals 2

    .line 137
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 108
    iget p3, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-virtual {p3, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 109
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->currentChatOrUser()V

    .line 110
    invoke-direct {p0, p1}, Lorg/fork/ui/view/AvatarDrawableCell;->drawOnline(Landroid/graphics/Canvas;)V

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 112
    invoke-direct {p0, p1, p3}, Lorg/fork/ui/view/AvatarDrawableCell;->drawReaction(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 113
    invoke-direct {p0, p1, p3}, Lorg/fork/ui/view/AvatarDrawableCell;->drawMention(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 114
    iget-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_1

    const-string v0, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.Chat"

    .line 115
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_0

    .line 117
    iget p3, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p3

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object p1

    aget p1, p1, p4

    invoke-direct {p0, p1}, Lorg/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-direct {p0, p1}, Lorg/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    goto :goto_0

    .line 123
    :cond_1
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-direct {p0, p1}, Lorg/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0, p4}, Lorg/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    :goto_0
    return p2
.end method

.method public final getCurrentAccount()I
    .locals 1

    .line 27
    iget v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    return v0
.end method

.method public final setDialog(JZ)V
    .locals 5

    .line 76
    iget-wide v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 79
    :cond_0
    iput-wide p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    .line 81
    iget v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 82
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :cond_1
    const/16 v2, 0x14

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 83
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 84
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 85
    iput-object v4, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 86
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 88
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 90
    :cond_2
    iget-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 91
    iget-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 92
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    .line 95
    :cond_3
    iput-object v4, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    neg-long p1, p1

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 97
    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 98
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 100
    :goto_1
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

    move-result-object p1

    xor-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_4

    const/16 v3, 0x8

    .line 304
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final update()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 71
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final updateColors()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->backgroundColorKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "chats_pinnedIcon"

    .line 60
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 61
    sget v1, Lorg/telegram/messenger/R$drawable;->list_pin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object v0

    const-string v1, "chats_unreadCounterText"

    const-string v2, "chats_unreadCounter"

    .line 64
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 65
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CounterView;->setGravity(I)V

    return-void
.end method
