.class Lorg/telegram/ui/PhotoViewer$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$DNvdWiV8iXGZTZrwHEdgOOkuirg(Lorg/telegram/ui/PhotoViewer$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$ListAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 18669
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 18670
    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 5

    .line 18690
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 18691
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$26500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 18693
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$32800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)I

    move-result p1

    .line 18694
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v2

    .line 18695
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$14200(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 18696
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(IZZ)V

    :cond_0
    if-ltz p1, :cond_1

    .line 18699
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$32900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-nez p1, :cond_1

    .line 18701
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$32900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 18704
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$33000(Lorg/telegram/ui/PhotoViewer;)V

    goto :goto_0

    .line 18706
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoUnchecked(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 18708
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$32900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-nez p1, :cond_3

    .line 18710
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$32900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 18712
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$33000(Lorg/telegram/ui/PhotoViewer;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 18680
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18681
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 18721
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    const/16 v0, 0x55

    .line 18722
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setItemWidth(II)V

    .line 18723
    iget-object v0, p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x1

    .line 18725
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 18726
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 18727
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 18728
    instance-of v3, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v4, -0x1

    const/4 v5, 0x4

    if-eqz v3, :cond_4

    .line 18729
    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 18730
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 18731
    iget-object v3, p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18732
    iget-object v3, p2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 18733
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v6, Lorg/telegram/messenger/R$drawable;->nophotos:I

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, v3, v5, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 18734
    :cond_1
    iget-object v3, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 18735
    iget v3, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v6, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    invoke-virtual {v0, v3, v6, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IIZ)V

    .line 18736
    iget-boolean v3, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const-string v6, ":"

    if-eqz v3, :cond_2

    .line 18737
    iget-object v3, p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18738
    iget-object v3, p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoTextView:Landroid/widget/TextView;

    iget v7, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vthumb://"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$drawable;->nophotos:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, p2, v5, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 18741
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thumb://"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$drawable;->nophotos:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, p2, v5, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 18744
    :cond_3
    sget p2, Lorg/telegram/messenger/R$drawable;->nophotos:I

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    .line 18746
    :goto_1
    invoke-virtual {p1, v4, v2, v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(IZZ)V

    .line 18747
    iget-object p1, p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 18748
    :cond_4
    instance-of v0, p2, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_5

    .line 18749
    check-cast p2, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 18750
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 18751
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setImage(Lorg/telegram/messenger/MediaController$SearchImage;)V

    .line 18752
    iget-object p2, p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18753
    invoke-virtual {p1, v4, v2, v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(IZZ)V

    .line 18754
    iget-object p1, p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 18688
    new-instance p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;-><init>(Landroid/content/Context;)V

    .line 18689
    iget-object p2, p1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    new-instance v0, Lorg/telegram/ui/PhotoViewer$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$ListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18716
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
