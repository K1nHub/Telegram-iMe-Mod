.class public final Lcom/iMe/fork/ui/view/AvatarDrawableCell;
.super Landroid/widget/FrameLayout;
.source "AvatarDrawableCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/AvatarDrawableCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAvatarDrawableCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AvatarDrawableCell.kt\ncom/iMe/fork/ui/view/AvatarDrawableCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,330:1\n304#2,2:331\n1#3:333\n*S KotlinDebug\n*F\n+ 1 AvatarDrawableCell.kt\ncom/iMe/fork/ui/view/AvatarDrawableCell\n*L\n105#1:331,2\n*E\n"
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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/AvatarDrawableCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

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

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

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

    .line 158
    iget-wide v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    iget v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 160
    iput-object v1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_0

    .line 161
    :cond_0
    iget-wide v2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
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

    .line 163
    iput-object v1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    :cond_1
    :goto_0
    return-void
.end method

.method private final drawCount(I)V
    .locals 9

    .line 306
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->UNREAD_COUNT_CHATS:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 307
    iput p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    .line 308
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 309
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 310
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    const/16 v5, 0xa

    if-nez v4, :cond_0

    .line 311
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object v4

    iget v6, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-virtual {v6, v7, v8, v1}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v1

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {v4, v2, v1, v0, p1}, Lorg/telegram/ui/Components/CounterView;->setCountResentChats(ZZFF)V

    .line 314
    iget p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    iget v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    .line 316
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 320
    :cond_2
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

    .line 321
    iput v3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    .line 322
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    :goto_0
    return-void
.end method

.method private final drawMention(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->MENTIONS:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 288
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

    .line 289
    :goto_1
    iput p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showMentionProgress:F

    .line 290
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 292
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

    .line 294
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {p2, v2, v3, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 295
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 298
    iget v3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showMentionProgress:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 299
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x41380000    # 11.5f

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    invoke-virtual {p1, p2, v5, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 300
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

    .line 301
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawOnline(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 168
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0xf

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 169
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 171
    iget-object v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v11, Lcom/iMe/fork/enums/DrawStatusType;->ONLINE_USER:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v5, v11}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 172
    iget-object v3, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const-string v5, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.User"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isLive(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v5, :cond_3

    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_1

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v11, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v11

    if-gt v5, v11, :cond_2

    :cond_1
    iget v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v10

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v6, v7

    .line 175
    :goto_2
    iput v6, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showOnlineProgress:F

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v3, :cond_b

    .line 177
    iget v3, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showOnlineProgress:F

    cmpg-float v5, v3, v7

    if-nez v5, :cond_5

    move v8, v10

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_b

    int-to-float v4, v4

    int-to-float v2, v2

    .line 178
    invoke-virtual {v1, v3, v3, v4, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 179
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->backgroundColorKey:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x7

    .line 180
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 181
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_9

    .line 185
    :cond_6
    iget-object v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v11, Lcom/iMe/fork/enums/DrawStatusType;->LIVE_VIDEO:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v5, v11}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 186
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 187
    iget-object v11, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-string v12, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.Chat"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v12, :cond_7

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v11, :cond_7

    move v11, v10

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_8

    move v12, v6

    goto :goto_5

    :cond_8
    move v12, v7

    .line 188
    :goto_5
    iput v12, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showCallProgress:F

    if-eqz v11, :cond_b

    .line 190
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v11, v4

    int-to-float v2, v2

    .line 191
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v13, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showCallProgress:F

    mul-float/2addr v3, v13

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v2, v3, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x8

    .line 193
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showCallProgress:F

    mul-float/2addr v13, v14

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v2, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 194
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v11, 0x20

    .line 197
    invoke-static {v11}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_9

    const v12, 0x3f266666    # 0.65f

    .line 198
    iput v12, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    .line 200
    :cond_9
    iget v12, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->progressStage:I

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x4

    packed-switch v12, :pswitch_data_0

    .line 230
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    mul-float/2addr v12, v15

    sub-float v12, v8, v12

    .line 231
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto/16 :goto_6

    .line 226
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

    .line 227
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto/16 :goto_7

    .line 222
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

    .line 223
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_6

    .line 218
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

    .line 219
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_7

    .line 214
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

    .line 215
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_6

    .line 210
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

    .line 211
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    goto :goto_7

    .line 206
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

    .line 207
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    :goto_6
    mul-float/2addr v14, v15

    add-float/2addr v8, v14

    goto :goto_8

    .line 202
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

    .line 203
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    :goto_7
    mul-float/2addr v14, v15

    sub-float/2addr v8, v14

    .line 235
    :goto_8
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

    .line 236
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v12, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 238
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

    .line 239
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v8, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 241
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v5, v3, v12, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 242
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 244
    invoke-static {v11}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 245
    iget v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    const v2, 0x3d23d70a    # 0.04f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_a

    .line 247
    iput v7, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->innerProgress:F

    .line 248
    iget v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->progressStage:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->progressStage:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_a

    const/4 v1, 0x0

    .line 250
    iput v1, v0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->progressStage:I

    .line 253
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_b
    :goto_9
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
    .locals 6

    .line 260
    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->recentChatsController:Lcom/iMe/fork/controller/RecentChatsController;

    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->REACTION:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

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

    .line 265
    :goto_1
    iput p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showReactionProgress:F

    .line 266
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 268
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 269
    iget v2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v0

    .line 270
    :goto_2
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-nez v3, :cond_5

    .line 271
    iget v3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->lastUnreadCount:I

    if-nez v3, :cond_4

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :cond_4
    sub-int/2addr v2, v0

    :cond_5
    int-to-float v0, v2

    int-to-float v3, v1

    const/16 v4, 0x14

    .line 273
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {p2, v0, v3, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 274
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 277
    iget v3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->showReactionProgress:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 278
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x41380000    # 11.5f

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    invoke-virtual {p1, p2, v5, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 279
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x40600000    # 3.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v2, v0

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p2, v2, v1, v3, v0}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 280
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
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

    .line 149
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initCounterView()Lorg/telegram/ui/Components/CounterView;
    .locals 3

    .line 155
    new-instance v0, Lorg/telegram/ui/Components/CounterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method private final initPinnedImageView()Landroid/widget/ImageView;
    .locals 4

    .line 151
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 122
    iget p3, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-virtual {p3, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 123
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChatOrUser()V

    .line 124
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawOnline(Landroid/graphics/Canvas;)V

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 126
    invoke-direct {p0, p1, p3}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawReaction(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 127
    invoke-direct {p0, p1, p3}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawMention(Landroid/graphics/Canvas;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 128
    iget-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_1

    const-string v0, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.Chat"

    .line 129
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_0

    .line 131
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

    .line 133
    :cond_0
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    goto :goto_0

    .line 137
    :cond_1
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->drawCount(I)V

    goto :goto_0

    .line 140
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

.method protected onMeasure(II)V
    .locals 8

    .line 113
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x14

    const/16 v2, 0x14

    const/16 v3, 0x35

    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getCounterView()Lorg/telegram/ui/Components/CounterView;

    move-result-object v0

    const/16 v1, 0x55

    const/4 v2, -0x2

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
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

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setCompactMode(Z)V

    .line 92
    iget-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 93
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v4, p2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 96
    iget-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 97
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    .line 100
    :cond_3
    iput-object v4, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    neg-long p1, p1

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 102
    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 103
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 105
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
