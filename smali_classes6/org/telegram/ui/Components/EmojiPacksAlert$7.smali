.class Lorg/telegram/ui/Components/EmojiPacksAlert$7;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
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

    .line 469
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$7;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$7;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$7;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$7;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1300(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    :cond_0
    return v1
.end method
