.class public final Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter$onCreateViewHolder$2;
.super Lorg/telegram/ui/Cells/TextCheckBoxCell;
.source "DeleteServiceMessagesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter$onCreateViewHolder$2;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    .line 642
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    .line 645
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter$onCreateViewHolder$2;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x64

    .line 647
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 646
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 644
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->onMeasure(II)V

    return-void
.end method
