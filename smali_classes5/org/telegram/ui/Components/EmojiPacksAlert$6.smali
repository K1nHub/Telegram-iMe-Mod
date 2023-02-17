.class Lorg/telegram/ui/Components/EmojiPacksAlert$6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "EmojiPacksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$6;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 639
    instance-of p3, p2, Lorg/telegram/ui/Components/EmojiPacksAlert$SeparatorView;

    if-eqz p3, :cond_0

    .line 640
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$6;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    neg-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 641
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$6;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    neg-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 642
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$6;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0xe

    .line 643
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    :goto_0
    return-void
.end method
