.class Lorg/telegram/ui/MessageSeenView$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MessageSeenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSeenView;->createListView()Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSeenView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageSeenView;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lorg/telegram/ui/MessageSeenView$2;->this$0:Lorg/telegram/ui/MessageSeenView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 265
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x4

    if-nez p2, :cond_0

    .line 267
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 269
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/MessageSeenView$2;->this$0:Lorg/telegram/ui/MessageSeenView;

    iget-object p4, p4, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_1

    .line 270
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method
