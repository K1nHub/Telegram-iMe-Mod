.class Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeerColorPicker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;
    }
.end annotation


# static fields
.field private static final order:[I


# instance fields
.field public final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final currentAccount:I

.field public final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedPosition:I


# direct methods
.method public static synthetic $r8$lambda$jaJC3-_aCOic1xpGDWv8LyCPpFE(Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->lambda$setSelectedPosition$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 750
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->order:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x3
        0x1
        0x0
        0x2
        0x4
        0x6
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 775
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 776
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->currentAccount:I

    .line 777
    iput-object p3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v0, 0x8

    .line 779
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v0, 0x0

    .line 780
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 782
    new-instance v1, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;-><init>(Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 818
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 819
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 820
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static synthetic access$1500()[I
    .locals 1

    .line 744
    sget-object v0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->order:[I

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;)I
    .locals 0

    .line 744
    iget p0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->selectedPosition:I

    return p0
.end method

.method private synthetic lambda$setSelectedPosition$0(Landroid/view/View;)V
    .locals 3

    .line 831
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->selectedPosition:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;->setSelected(ZZ)V

    return-void
.end method


# virtual methods
.method public getColorId()I
    .locals 1

    .line 836
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->selectedPosition:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->toColorId(I)I

    move-result v0

    return v0
.end method

.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    .line 771
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 762
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 763
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 764
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 766
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setSelected(I)V
    .locals 0

    .line 825
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->toPosition(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 829
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->selectedPosition:I

    if-eq p1, v0, :cond_0

    .line 830
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->selectedPosition:I

    .line 831
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;)V

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public toColorId(I)I
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    .line 861
    sget-object v0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->order:[I

    aget p1, v0, p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x7

    .line 864
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    .line 865
    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 868
    :cond_1
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toPosition(I)I
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 840
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    move v1, v0

    .line 841
    :goto_0
    sget-object v2, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->order:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 842
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_1
    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v1, :cond_2

    return v0

    :cond_2
    move v2, v0

    .line 851
    :goto_1
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 852
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    if-ne v3, p1, :cond_3

    add-int/lit8 v2, v2, 0x7

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method
