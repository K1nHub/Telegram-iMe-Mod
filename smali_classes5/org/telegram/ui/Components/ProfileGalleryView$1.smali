.class Lorg/telegram/ui/Components/ProfileGalleryView$1;
.super Ljava/lang/Object;
.source "ProfileGalleryView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ProfileGalleryView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/ProfileGalleryView$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ProfileGalleryView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ProfileGalleryView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 7

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$000(Lorg/telegram/ui/Components/ProfileGalleryView;IF)V

    if-nez p3, :cond_7

    .line 150
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$100(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result p1

    .line 151
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result p2

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 154
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    .line 155
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_7

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 159
    instance-of v2, v1, Lorg/telegram/ui/Components/BackupImageView;

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 162
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$100(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$100(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$300(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result v2

    .line 163
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 167
    :cond_2
    check-cast v1, Lorg/telegram/ui/Components/BackupImageView;

    .line 168
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getAllowStartAnimation()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_4

    if-nez v3, :cond_3

    .line 172
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 173
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 175
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLocation;

    if-eqz v1, :cond_6

    .line 177
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$500(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    const-string v3, "mp4"

    invoke-virtual {v2, v1, v3}, Lorg/telegram/messenger/FileLoader;->setForceStreamLoadingFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    .line 181
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 183
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLocation;

    if-eqz v2, :cond_5

    .line 185
    iget-wide v5, v2, Lorg/telegram/messenger/ImageLocation;->videoSeekTo:J

    invoke-virtual {v3, v5, v6, p3, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZZ)V

    .line 188
    :cond_5
    invoke-virtual {v1, p3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 189
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$1;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->selectedPage:I

    if-eq p1, v1, :cond_0

    .line 199
    iput v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevPage:I

    .line 200
    iput p1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->selectedPage:I

    :cond_0
    return-void
.end method
