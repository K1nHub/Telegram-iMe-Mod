.class Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter$1;
.super Lorg/telegram/ui/Cells/StickerEmojiCell;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;Landroid/content/Context;Z)V
    .locals 0

    .line 1400
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Cells/StickerEmojiCell;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    .line 1402
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1403
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x52

    .line 1405
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method
