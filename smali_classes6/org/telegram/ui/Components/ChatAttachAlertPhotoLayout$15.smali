.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;
.super Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;
.source "ChatAttachAlertPhotoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field final synthetic val$sameTakePictureOrientation:Z


# direct methods
.method public static synthetic $r8$lambda$-f8SmU1QefzSnzUs1U4VjgEKTiY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->lambda$cancelButtonPressed$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 1720
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->val$sameTakePictureOrientation:Z

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;)V

    return-void
.end method

.method private synthetic lambda$cancelButtonPressed$0()V
    .locals 2

    .line 1741
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canCaptureMorePhotos()Z
    .locals 2

    .line 1849
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canScrollAway()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 7

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    .line 1740
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1745
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 1746
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3702(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;F)F

    .line 1747
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    .line 1748
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 1750
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1751
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1752
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1754
    iget-object v5, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1755
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1756
    :cond_1
    iget-object v5, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1757
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1759
    :cond_2
    iget-object v5, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1760
    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1763
    :cond_4
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1764
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1765
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1766
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1767
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1769
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1770
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    :cond_5
    return v2
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public needAddMorePhotos()V
    .locals 9

    .line 1777
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3802(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    .line 1778
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    return-void

    .line 1782
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    .line 1785
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1786
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1787
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    return-void
.end method

.method public onClose()V
    .locals 1

    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    return-void
.end method

.method public onOpen()V
    .locals 1

    .line 1724
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    return-void
.end method

.method public scaleToFill()Z
    .locals 4

    .line 1822
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1825
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1826
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->val$sameTakePictureOrientation:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;Z)V
    .locals 8

    .line 1793
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    .line 1796
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1797
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1798
    iput-object p2, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1800
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1801
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_4

    .line 1802
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1803
    iget v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    if-lez v2, :cond_3

    goto :goto_1

    .line 1806
    :cond_3
    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1809
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 1810
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    .line 1811
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz p5, :cond_5

    const/4 p1, 0x4

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    :goto_2
    move v1, p1

    const/4 v2, 0x1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    .line 1812
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1813
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$400()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1814
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$100()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1815
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1816
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1817
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 4

    .line 1831
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1833
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1834
    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_0

    .line 1835
    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1836
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->showImage()V

    const/4 v3, 0x1

    .line 1837
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->showCheck(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
