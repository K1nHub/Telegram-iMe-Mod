.class public final Lcom/iMe/fork/ui/view/AvatarDrawableCell;
.super Landroid/widget/FrameLayout;
.source "AvatarDrawableCell.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAvatarDrawableCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AvatarDrawableCell.kt\ncom/iMe/fork/ui/view/AvatarDrawableCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,312:1\n304#2,2:313\n1#3:315\n*S KotlinDebug\n*F\n+ 1 AvatarDrawableCell.kt\ncom/iMe/fork/ui/view/AvatarDrawableCell\n*L\n104#1:313,2\n*E\n"
.end annotation


# instance fields
.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private backgroundColorKey:I

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

.field private final recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

.field private showCallProgress:F

.field private showMentionProgress:F

.field private showOnlineProgress:F

.field private showReactionProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    .line 32
    new-instance p1, Lcom/iMe/fork/ui/view/AvatarDrawableCell$imageView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell$imageView$2;-><init>(Lcom/iMe/fork/ui/view/AvatarDrawableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->imageView$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/iMe/fork/ui/view/AvatarDrawableCell$pinnedImageView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell$pinnedImageView$2;-><init>(Lcom/iMe/fork/ui/view/AvatarDrawableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->pinnedImageView$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lcom/iMe/fork/ui/view/AvatarDrawableCell$counterView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell$counterView$2;-><init>(Lcom/iMe/fork/ui/view/AvatarDrawableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->counterView$delegate:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 40
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iput p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->backgroundColorKey:I

    const/4 p1, 0x5

    .line 45
    iput p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->progressStage:I

    .line 47
    sget-object p1, Lcom/iMe/fork/controller/RecentChatsController;->Companion:Lcom/iMe/fork/controller/RecentChatsController$Companion;

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/RecentChatsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    .line 50
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    const/16 p2, 0x28

    const/16 v0, 0x11

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

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

    .line 52
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    const/4 p2, -0x2

    const/16 v0, 0x55

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->updateColors()V

    return-void
.end method

.method public static final synthetic access$initBackupImageView(Lcom/iMe/fork/ui/view/AvatarDrawableCell;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->initBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initCounterView(Lcom/iMe/fork/ui/view/AvatarDrawableCell;)Lorg/telegram/ui/Components/CounterView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->initCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPinnedImageView(Lcom/iMe/fork/ui/view/AvatarDrawableCell;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->initPinnedImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private final currentChatOrUser()V
    .locals 4

    .line 148
    iget-wide v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 150
    iput-object v1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_0

    .line 151
    :cond_0
    iget-wide v2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 153
    iput-object v1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    :cond_1
    :goto_0
    return-void
.end method

.method private final drawCount(I)V
    .locals 9

    .line 294
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->UNREAD_COUNT_CHATS:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 295
    iget v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    if-eq v0, p1, :cond_2

    .line 296
    iput p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    .line 297
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 298
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v0, v5

    .line 299
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object v5

    iget v6, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-virtual {v6, v7, v8, v1}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v1

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {v5, v2, v1, v0, p1}, Lorg/telegram/ui/Components/CounterView;->setCountResentChats(ZZFF)V

    .line 300
    iget p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    iput v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    iget v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    .line 302
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    iget v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-virtual {v0, v4, v5, v1}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v0

    int-to-float v1, v3

    invoke-virtual {p1, v2, v0, v1, v1}, Lorg/telegram/ui/Components/CounterView;->setCountResentChats(ZZFF)V

    .line 308
    iput v3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    .line 309
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final drawMention(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 6

    .line 273
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->MENTIONS:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 277
    :goto_1
    iput p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showMentionProgress:F

    .line 278
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 280
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

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

    .line 282
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {p2, v2, v3, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 283
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 286
    iget v3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showMentionProgress:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 287
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x41380000    # 11.5f

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    invoke-virtual {p1, p2, v5, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 288
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

    .line 289
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawOnline(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xf

    .line 158
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    .line 159
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 161
    iget-object v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v11, Lcom/iMe/fork/enums/DrawStatusType;->ONLINE_USER:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v5, v11}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    iget-object v3, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const-string v5, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.User"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isLive(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_2

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_0

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v11, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v11

    if-gt v5, v11, :cond_1

    :cond_0
    iget v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v10

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    .line 165
    :goto_1
    iput v6, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showOnlineProgress:F

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v3, :cond_a

    .line 167
    iget v3, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showOnlineProgress:F

    cmpg-float v5, v3, v7

    if-nez v5, :cond_4

    move v8, v10

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_a

    int-to-float v4, v4

    int-to-float v2, v2

    .line 168
    invoke-virtual {v1, v3, v3, v4, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 169
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->backgroundColorKey:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x7

    .line 170
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8

    .line 175
    :cond_5
    iget-object v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v11, Lcom/iMe/fork/enums/DrawStatusType;->LIVE_VIDEO:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v5, v11}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 176
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 177
    iget-object v11, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-string v12, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.Chat"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v12, :cond_6

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v11, :cond_6

    move v11, v10

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_7

    move v12, v6

    goto :goto_4

    :cond_7
    move v12, v7

    .line 178
    :goto_4
    iput v12, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showCallProgress:F

    if-eqz v11, :cond_a

    .line 180
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v11, v4

    int-to-float v2, v2

    .line 181
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v13, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showCallProgress:F

    mul-float/2addr v3, v13

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v2, v3, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x8

    .line 183
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showCallProgress:F

    mul-float/2addr v13, v14

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v2, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v11, 0x20

    .line 187
    invoke-static {v11}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_8

    const v12, 0x3f266666    # 0.65f

    .line 188
    iput v12, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    .line 190
    :cond_8
    iget v12, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->progressStage:I

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x4

    packed-switch v12, :pswitch_data_0

    .line 220
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float/2addr v12, v15

    sub-float v12, v8, v12

    .line 221
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto/16 :goto_5

    .line 216
    :pswitch_0
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v8, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float/2addr v14, v8

    add-float/2addr v12, v14

    .line 217
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto/16 :goto_6

    .line 212
    :pswitch_1
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v14, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float/2addr v12, v14

    sub-float v12, v8, v12

    .line 213
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_5

    .line 208
    :pswitch_2
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float/2addr v12, v15

    add-float/2addr v12, v8

    .line 209
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_6

    .line 204
    :pswitch_3
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float/2addr v12, v15

    sub-float v12, v8, v12

    .line 205
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_5

    .line 200
    :pswitch_4
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v14, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float/2addr v12, v14

    add-float/2addr v12, v8

    .line 201
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_6

    .line 196
    :pswitch_5
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v14, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float/2addr v12, v14

    sub-float v12, v8, v12

    .line 197
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    :goto_5
    mul-float/2addr v14, v15

    add-float/2addr v8, v14

    goto :goto_7

    .line 192
    :pswitch_6
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float/2addr v12, v15

    add-float/2addr v12, v8

    .line 193
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    :goto_6
    mul-float/2addr v14, v15

    sub-float/2addr v8, v14

    .line 225
    :goto_7
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v14, v4, v14

    int-to-float v14, v14

    sub-float v15, v2, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v3, v4, v16

    int-to-float v3, v3

    add-float/2addr v12, v2

    invoke-virtual {v5, v14, v15, v3, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v12, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 228
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v4, v3

    int-to-float v3, v3

    sub-float v12, v2, v8

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v14, v4, v14

    int-to-float v14, v14

    add-float/2addr v2, v8

    invoke-virtual {v5, v3, v12, v14, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 229
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v8, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 231
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v5, v3, v12, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 232
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 234
    invoke-static {v11}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 235
    iget v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    const v2, 0x3d23d70a    # 0.04f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_9

    .line 237
    iput v7, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    .line 238
    iget v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->progressStage:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->progressStage:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_9

    const/4 v1, 0x0

    .line 240
    iput v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->progressStage:I

    .line 243
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

    .line 250
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->REACTION:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 255
    :goto_1
    iput p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showReactionProgress:F

    .line 256
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 258
    iget v2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 259
    iget v3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

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

    .line 260
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {p2, v3, v4, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 261
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 264
    iget v4, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showReactionProgress:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 265
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v5, 0x41380000    # 11.5f

    mul-float v6, v4, v5

    mul-float/2addr v4, v5

    invoke-virtual {p1, p2, v6, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 266
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showReactionProgress:F

    sub-float/2addr v1, v3

    const/16 v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 267
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

    .line 268
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final getCounterView()Lorg/telegram/ui/Components/CounterView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->counterView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/CounterView;

    return-object v0
.end method

.method private final getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method private final getPinnedImageView()Landroid/widget/ImageView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->pinnedImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final initBackupImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 2

    .line 139
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initCounterView()Lorg/telegram/ui/Components/CounterView;
    .locals 3

    .line 145
    new-instance v0, Lorg/telegram/ui/Components/CounterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method private final initPinnedImageView()Landroid/widget/ImageView;
    .locals 4

    .line 141
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 112
    iget p3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-virtual {p3, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 113
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChatOrUser()V

    .line 114
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawOnline(Landroid/graphics/Canvas;)V

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 116
    invoke-direct {p0, p1, p3}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawReaction(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 117
    invoke-direct {p0, p1, p3}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawMention(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 118
    iget-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_1

    const-string v0, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.Chat"

    .line 119
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_0

    .line 121
    iget p3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p3

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object p1

    aget p1, p1, p4

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    goto :goto_0

    .line 127
    :cond_1
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0, p4}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    :goto_0
    return p2
.end method

.method public final getCurrentAccount()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    return v0
.end method

.method public final setDialog(JZ)V
    .locals 5

    .line 80
    iget-wide v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 83
    :cond_0
    iput-wide p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    .line 85
    iget v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 86
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

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

    .line 87
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 89
    iput-object v4, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 90
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 92
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 95
    iget-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 96
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    .line 99
    :cond_3
    iput-object v4, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    neg-long p1, p1

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 101
    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 102
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 104
    :goto_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

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

    .line 74
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 75
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final updateColors()V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 60
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    .line 61
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 62
    iget v2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->backgroundColorKey:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 64
    sget v2, Lorg/telegram/messenger/R$drawable;->list_pin:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 67
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object v0

    .line 68
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;->setColors(II)V

    const/4 v1, 0x5

    .line 69
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CounterView;->setGravity(I)V

    return-void
.end method
