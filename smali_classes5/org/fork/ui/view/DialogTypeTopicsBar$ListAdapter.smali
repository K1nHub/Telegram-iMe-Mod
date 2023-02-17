.class final Lorg/fork/ui/view/DialogTypeTopicsBar$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DialogTypeTopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/view/DialogTypeTopicsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/DialogTypeTopicsBar;


# direct methods
.method public constructor <init>(Lorg/fork/ui/view/DialogTypeTopicsBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lorg/fork/ui/view/DialogTypeTopicsBar$ListAdapter;->this$0:Lorg/fork/ui/view/DialogTypeTopicsBar;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/fork/ui/view/DialogTypeTopicsBar$ListAdapter;->this$0:Lorg/fork/ui/view/DialogTypeTopicsBar;

    invoke-virtual {v0}, Lorg/fork/ui/view/DialogTypeTopicsBar;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/smedialink/ui/topics/TopicView;

    iget-object v0, p0, Lorg/fork/ui/view/DialogTypeTopicsBar$ListAdapter;->this$0:Lorg/fork/ui/view/DialogTypeTopicsBar;

    .line 95
    invoke-virtual {v0}, Lorg/fork/ui/view/DialogTypeTopicsBar;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fork/enums/DialogType;

    invoke-virtual {v0}, Lorg/fork/ui/view/DialogTypeTopicsBar;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0}, Lorg/fork/ui/view/DialogTypeTopicsBar;->getCurrentDialogType()Lorg/fork/enums/DialogType;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, v1, p2}, Lcom/smedialink/ui/topics/TopicView;->setDialogType(Lorg/fork/enums/DialogType;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/view/DialogTypeTopicsBar$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 13

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance p1, Lcom/smedialink/ui/topics/TopicView;

    .line 86
    iget-object p2, p0, Lorg/fork/ui/view/DialogTypeTopicsBar$ListAdapter;->this$0:Lorg/fork/ui/view/DialogTypeTopicsBar;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p2, "context"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p1

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/ui/topics/TopicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, -0x2

    const/16 v8, 0x18

    const/16 v9, 0x8

    const/4 v12, 0x6

    const/16 v11, 0x8

    move v10, v12

    .line 90
    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(IIIIII)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
