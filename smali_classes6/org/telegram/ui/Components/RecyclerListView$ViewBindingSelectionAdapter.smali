.class public abstract Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewBindingSelectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/iMe/utils/common/ViewBindingAdapterHolder<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectionBottomPadding(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
