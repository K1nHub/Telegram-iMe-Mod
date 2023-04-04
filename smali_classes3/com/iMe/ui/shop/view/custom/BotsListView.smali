.class public final Lcom/iMe/ui/shop/view/custom/BotsListView;
.super Landroid/widget/LinearLayout;
.source "BotsListView.kt"


# instance fields
.field private final adapter:Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;

.field private final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final list:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iMe/ui/shop/view/custom/BotsListView;->list:Lorg/telegram/ui/Components/RecyclerListView;

    .line 18
    new-instance v1, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;

    invoke-direct {v1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;-><init>(I)V

    iput-object v1, p0, Lcom/iMe/ui/shop/view/custom/BotsListView;->adapter:Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;

    .line 19
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p2, p0, Lcom/iMe/ui/shop/view/custom/BotsListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    .line 22
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 26
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/high16 p2, 0x40c00000    # 6.0f

    .line 27
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {v0, v1, v2, p2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 28
    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "divider"

    .line 30
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x50

    const/16 v4, 0x10

    const/16 v5, 0xd

    const/16 v6, 0x8

    const/16 v7, 0xc

    .line 31
    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final setContent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/shop/view/custom/BotsListView;->adapter:Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->setContent(Ljava/util/List;)V

    .line 36
    iget-object p1, p0, Lcom/iMe/ui/shop/view/custom/BotsListView;->list:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
