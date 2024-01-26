.class Lorg/telegram/ui/ManageLinksActivity$EmptyView;
.super Landroid/widget/LinearLayout;
.source "ManageLinksActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ManageLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyView"
.end annotation


# instance fields
.field private final currentAccount:I

.field private lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private stickerView:Lorg/telegram/ui/Components/BackupImageView;

.field final synthetic this$0:Lorg/telegram/ui/ManageLinksActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V
    .locals 7

    .line 727
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    .line 728
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 723
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->currentAccount:I

    const/16 v0, 0xc

    .line 730
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, 0x1

    .line 731
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 734
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$100(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 735
    new-instance p1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x68

    const/16 v1, 0x68

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 736
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 740
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x68

    const/16 v1, 0x68

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 741
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSticker()V
    .locals 10

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$200(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$300(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 761
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v3, "tg_placeholders_android"

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 763
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    :cond_1
    move-object v9, v0

    if-eqz v9, :cond_2

    .line 765
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x4

    if-lt v0, v4, :cond_2

    .line 766
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 767
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 768
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    .line 769
    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v6, "104_104"

    const-string v7, "tgs"

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 771
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    :goto_1
    return-void

    .line 747
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$200(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 750
    sget v2, Lorg/telegram/messenger/R$raw;->fork_binance_pay_create_collection:I

    goto :goto_3

    .line 751
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$300(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 752
    sget v2, Lorg/telegram/messenger/R$raw;->fork_donations:I

    goto :goto_3

    .line 753
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 754
    sget v2, Lorg/telegram/messenger/R$raw;->fork_staking_calculator:I

    .line 756
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x68

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 790
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 791
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "tg_placeholders_android"

    .line 792
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 793
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->setSticker()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 777
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 778
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->setSticker()V

    .line 779
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 784
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 785
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
