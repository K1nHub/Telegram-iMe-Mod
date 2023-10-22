.class Lorg/telegram/ui/Adapters/DialogsAdapter$4;
.super Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
.source "DialogsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastUpdateTime:J

.field private moveProgress:F

.field private movement:I

.field private originalX:I

.field private originalY:I

.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected afterTextDraw()V
    .locals 6

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->originalX:I

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->originalY:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->originalY:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method protected onTextDraw()V
    .locals 8

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 729
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->moveProgress:F

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 730
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->originalX:I

    .line 731
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->originalY:I

    .line 732
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->originalX:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->originalY:I

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->originalX:I

    add-int/2addr v6, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v6, v1

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->originalY:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v1, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v2, v3, v4, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 735
    iget-wide v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->lastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v6, 0x11

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    move-wide v2, v6

    .line 739
    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->lastUpdateTime:J

    .line 740
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->movement:I

    const/high16 v1, 0x44260000    # 664.0f

    if-nez v0, :cond_1

    .line 741
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->moveProgress:F

    long-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->moveProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 743
    iput v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->movement:I

    .line 744
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->moveProgress:F

    goto :goto_0

    .line 747
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->moveProgress:F

    long-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->moveProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    .line 749
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->movement:I

    .line 750
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;->moveProgress:F

    .line 753
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    return-void
.end method
