.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2$1;
.super Ljava/lang/Object;
.source "LimitReachedBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2$1;->this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2$1;->this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;)V

    return-void
.end method
