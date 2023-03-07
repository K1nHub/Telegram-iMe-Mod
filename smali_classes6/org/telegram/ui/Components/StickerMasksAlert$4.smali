.class Lorg/telegram/ui/Components/StickerMasksAlert$4;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;I)V
    .locals 0

    .line 596
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$4;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 599
    new-instance p2, Lorg/telegram/ui/Components/StickerMasksAlert$4$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$4$1;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$4;Landroid/content/Context;)V

    .line 612
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 613
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
