.class Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$3;
.super Landroid/widget/FrameLayout;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1947
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$3;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1950
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$3;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 1951
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$3;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    sub-int/2addr p2, v0

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
