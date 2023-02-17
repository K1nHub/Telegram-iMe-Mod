.class Lorg/telegram/ui/Components/AvatarConstructorFragment$7;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "AvatarConstructorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 402
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    .line 404
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->firstLayout:Z

    return-void
.end method


# virtual methods
.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v10, p3

    const-wide/16 v12, 0x0

    if-nez p2, :cond_0

    move-wide v1, v12

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 417
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iput-wide v1, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    .line 418
    iput-object v10, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    cmp-long v4, v1, v12

    if-nez v4, :cond_1

    .line 420
    iget-object v1, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    const v1, 0x3e4ccccd    # 0.2f

    const-string/jumbo v2, "windowBackgroundWhiteGrayIcon"

    .line 421
    invoke-static {v10, v2, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v6

    .line 422
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    const-string v3, "100_100"

    const-string/jumbo v9, "tgs"

    move-object/from16 v10, p3

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 424
    :cond_1
    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v5, 0xe

    iget-object v6, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->access$1400(Lorg/telegram/ui/Components/AvatarConstructorFragment;)I

    move-result v6

    invoke-direct {v4, v5, v6, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 425
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 427
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    invoke-virtual {v1, v12, v13, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    .line 430
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 431
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 433
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iput-boolean v2, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->wasChanged:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 408
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 409
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->firstLayout:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 410
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->firstLayout:Z

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->access$600(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
