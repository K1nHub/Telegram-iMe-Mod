.class Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3$1;
.super Landroid/view/View;
.source "BottomSheetWithRecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3;Landroid/content/Context;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3$1;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 157
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3$1;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget v0, p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->contentHeight:I

    if-nez v0, :cond_0

    const/16 p2, 0x12c

    .line 158
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 160
    iget p2, p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    mul-float v0, v0, p2

    float-to-int p2, v0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 162
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
