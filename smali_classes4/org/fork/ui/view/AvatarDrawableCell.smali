.class public final Lorg/fork/ui/view/AvatarDrawableCell;
.super Landroid/widget/FrameLayout;
.source "AvatarDrawableCell.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAvatarDrawableCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AvatarDrawableCell.kt\norg/fork/ui/view/AvatarDrawableCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,104:1\n296#2,2:105\n*S KotlinDebug\n*F\n+ 1 AvatarDrawableCell.kt\norg/fork/ui/view/AvatarDrawableCell\n*L\n91#1:105,2\n*E\n"
.end annotation


# instance fields
.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private backgroundColorKey:Ljava/lang/String;

.field private final currentAccount:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private dialogId:J

.field private final imageView$delegate:Lkotlin/Lazy;

.field private final pinnedImageView$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    .line 22
    new-instance p1, Lorg/fork/ui/view/AvatarDrawableCell$imageView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/AvatarDrawableCell$imageView$2;-><init>(Lorg/fork/ui/view/AvatarDrawableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->imageView$delegate:Lkotlin/Lazy;

    .line 23
    new-instance p1, Lorg/fork/ui/view/AvatarDrawableCell$pinnedImageView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/AvatarDrawableCell$pinnedImageView$2;-><init>(Lorg/fork/ui/view/AvatarDrawableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->pinnedImageView$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string p1, "windowBackgroundGray"

    .line 28
    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->backgroundColorKey:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    const/16 p2, 0x28

    const/16 v0, 0x11

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
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

    .line 33
    invoke-virtual {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->updateColors()V

    return-void
.end method

.method public static final synthetic access$initBackupImageView(Lorg/fork/ui/view/AvatarDrawableCell;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->initBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPinnedImageView(Lorg/fork/ui/view/AvatarDrawableCell;)Landroid/widget/ImageView;
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->initPinnedImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private final getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method private final getPinnedImageView()Landroid/widget/ImageView;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->pinnedImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final initBackupImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 2

    .line 97
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initPinnedImageView()Landroid/widget/ImageView;
    .locals 2

    .line 99
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public final getCurrentAccount()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    return v0
.end method

.method public final setDialog(JZ)V
    .locals 5

    .line 67
    iget-wide v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 70
    :cond_0
    iput-wide p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    .line 72
    iget v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 73
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

    .line 74
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 75
    iput-object v4, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 77
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 79
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 81
    :cond_2
    iget-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 82
    iget-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 83
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    .line 86
    :cond_3
    iput-object v4, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    neg-long p1, p1

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 88
    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 89
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 91
    :goto_1
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

    move-result-object p1

    xor-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_4

    const/16 v3, 0x8

    .line 296
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final update(I)V
    .locals 2

    .line 47
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-wide v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    iget p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 52
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_0

    .line 58
    :cond_2
    iget p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->dialogId:J

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 59
    iget-object v0, p0, Lorg/fork/ui/view/AvatarDrawableCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 62
    :goto_0
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final updateColors()V
    .locals 3

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/view/AvatarDrawableCell;->getPinnedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/fork/ui/view/AvatarDrawableCell;->backgroundColorKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "chats_pinnedIcon"

    .line 41
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 42
    sget v1, Lorg/telegram/messenger/R$drawable;->widget_pin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
