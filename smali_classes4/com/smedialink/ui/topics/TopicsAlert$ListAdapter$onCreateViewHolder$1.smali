.class public final Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter$onCreateViewHolder$1;
.super Lorg/fork/ui/view/CircleCheckCell;
.source "TopicsAlert.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/topics/TopicsAlert;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/topics/TopicsAlert;Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    const-string p1, "context"

    .line 359
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x30

    .line 358
    invoke-direct {p0, p2, p1, p3}, Lorg/fork/ui/view/CircleCheckCell;-><init>(Landroid/content/Context;ILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 365
    iget-object p1, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    invoke-static {p1}, Lcom/smedialink/ui/topics/TopicsAlert;->access$getItemWidth$p(Lcom/smedialink/ui/topics/TopicsAlert;)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x64

    .line 366
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 364
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
