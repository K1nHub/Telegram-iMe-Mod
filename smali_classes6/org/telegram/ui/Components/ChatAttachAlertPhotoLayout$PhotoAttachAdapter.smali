.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlertPhotoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAttachAdapter"
.end annotation


# instance fields
.field private itemsCount:I

.field private mContext:Landroid/content/Context;

.field private needCamera:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field private viewsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/RecyclerListView$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$icEGF5m8qZBOIYWyXWxdUBGy-SQ(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->lambda$createHolder$0(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Z)V
    .locals 1

    .line 3780
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 3777
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    .line 3781
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    .line 3782
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)I
    .locals 0

    .line 3773
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->itemsCount:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 0

    .line 3773
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getPhoto(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z
    .locals 0

    .line 3773
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    return p0
.end method

.method private getPhoto(I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 2

    .line 3870
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 3873
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createHolder$0(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V
    .locals 9

    .line 3823
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3826
    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3827
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v1

    .line 3828
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 3831
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$100()Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    .line 3832
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    if-ltz v5, :cond_3

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$100()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v7, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    if-lt v5, v7, :cond_3

    .line 3833
    iget-boolean p1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz p1, :cond_2

    iget-object p1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_2

    .line 3834
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    .line 3835
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3836
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-eqz p1, :cond_2

    .line 3837
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result p1

    if-eq p1, v4, :cond_2

    .line 3838
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Slowmode:I

    const-string v0, "Slowmode"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->SlowmodeSelectSendError:I

    const-string v1, "SlowmodeSelectSendError"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 3839
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 3840
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1802(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)I

    :cond_2
    return-void

    :cond_3
    const/4 v5, -0x1

    if-eqz v2, :cond_4

    .line 3847
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$400()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_0

    :cond_4
    const/4 v6, -0x1

    .line 3848
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v8, v8, Lorg/telegram/ui/ChatActivity;

    if-eqz v8, :cond_5

    iget-boolean v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v7, :cond_5

    .line 3849
    invoke-virtual {p2, v6, v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_1

    .line 3851
    :cond_5
    invoke-virtual {p2, v5, v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    .line 3853
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2, v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    .line 3855
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p2

    if-ne p0, p2, :cond_7

    .line 3856
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p2

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v5

    if-ne p2, v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 3859
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 3861
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 3863
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x2

    :goto_3
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    .line 3864
    iget-boolean p2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public createCache()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 3788
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    .line 3793
    new-instance v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3794
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 3795
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    .line 3820
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 3822
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setDelegate(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;)V

    .line 3866
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 4

    .line 4002
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 4006
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4009
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 4012
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 4015
    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3900()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 4016
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4017
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 4019
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 4022
    :cond_5
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->itemsCount:I

    return v1
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 4027
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 4031
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v4

    if-ne v0, v4, :cond_2

    .line 4032
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v3

    .line 4038
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_3
    move v0, p1

    .line 4041
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 4044
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->itemsCount:I

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_5

    return v1

    .line 4046
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 4054
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4055
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_3

    .line 4056
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 3878
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_8

    .line 3928
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;

    .line 3929
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;->setItemSize(I)V

    .line 3930
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;->setType(I)V

    goto/16 :goto_8

    .line 3918
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    iput-object p1, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    .line 3919
    iget-object p1, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3920
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 3922
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3924
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->setItemSize(I)V

    goto/16 :goto_8

    .line 3880
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v3

    if-ne v0, v3, :cond_5

    add-int/lit8 p2, p2, -0x1

    .line 3883
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 p2, p2, -0x1

    .line 3886
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 3887
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_7

    .line 3888
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setItemSize(I)V

    goto :goto_3

    .line 3890
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$6000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setIsVertical(Z)V

    .line 3892
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_9

    .line 3893
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3896
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 3900
    :cond_a
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v4

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne p2, v4, :cond_c

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p1, v0, v3, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    .line 3901
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_d

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v2, :cond_d

    .line 3902
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$400()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$100()Ljava/util/HashMap;

    move-result-object v3

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1, v2, v3, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_6

    .line 3904
    :cond_d
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$100()Ljava/util/HashMap;

    move-result-object v2

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v2, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    .line 3906
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_e

    .line 3907
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_7

    .line 3908
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v0, :cond_f

    .line 3909
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_7

    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3911
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3913
    :goto_7
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3914
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 3977
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3980
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$4;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->forUser:Z

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Landroid/content/Context;Z)V

    .line 3986
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    move-object p1, p2

    goto :goto_0

    .line 3968
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$3;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3954
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    new-instance v0, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    .line 3955
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_3

    .line 3956
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 3963
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 3965
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3946
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3947
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 3948
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3950
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 3994
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v0, :cond_0

    .line 3995
    check-cast p1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    .line 3996
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->updateBitmap()V

    :cond_0
    return-void
.end method
