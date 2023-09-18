.class public final Lcom/iMe/ui/smartpanel/view/SmartBotContentView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SmartBotContentView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/smartpanel/view/SmartBotContentView;-><init>(Landroid/content/Context;Lcom/iMe/ui/smartpanel/model/SmartBotTab;Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    .line 175
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    const-string/jumbo v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 182
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 183
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 184
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 185
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 186
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v1}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewLayoutManager$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 188
    iget-object p3, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p3}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->getItem(I)Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    move-result-object p3

    instance-of p3, p3, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    if-eqz p3, :cond_1

    const/high16 p3, 0x40000000    # 2.0f

    .line 189
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 191
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v0}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewLayoutManager$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isLastInRow(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    .line 190
    :goto_0
    iput p4, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method
