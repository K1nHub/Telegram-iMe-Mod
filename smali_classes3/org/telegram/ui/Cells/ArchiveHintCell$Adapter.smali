.class Lorg/telegram/ui/Cells/ArchiveHintCell$Adapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ArchiveHintCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ArchiveHintCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ArchiveHintCell;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Cells/ArchiveHintCell;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintCell$Adapter;->this$0:Lorg/telegram/ui/Cells/ArchiveHintCell;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/ArchiveHintCell;Lorg/telegram/ui/Cells/ArchiveHintCell$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ArchiveHintCell$Adapter;-><init>(Lorg/telegram/ui/Cells/ArchiveHintCell;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 93
    new-instance v0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;-><init>(Landroid/content/Context;I)V

    .line 94
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintCell$Adapter;->this$0:Lorg/telegram/ui/Cells/ArchiveHintCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ArchiveHintCell;->access$100(Lorg/telegram/ui/Cells/ArchiveHintCell;)Lorg/telegram/ui/Components/BottomPagesView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BottomPagesView;->setCurrentPage(I)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 130
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
