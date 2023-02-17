.class public final Lorg/fork/ui/view/MessageMoreActionsView$createListView$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "MessageMoreActionsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/MessageMoreActionsView;->createListView()Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageMoreActionsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageMoreActionsView.kt\norg/fork/ui/view/MessageMoreActionsView$createListView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n798#2,11:138\n*S KotlinDebug\n*F\n+ 1 MessageMoreActionsView.kt\norg/fork/ui/view/MessageMoreActionsView$createListView$1\n*L\n43#1:138,11\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/MessageMoreActionsView;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/MessageMoreActionsView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/MessageMoreActionsView$createListView$1;->this$0:Lorg/fork/ui/view/MessageMoreActionsView;

    .line 40
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 43
    iget-object v0, p0, Lorg/fork/ui/view/MessageMoreActionsView$createListView$1;->this$0:Lorg/fork/ui/view/MessageMoreActionsView;

    invoke-static {v0}, Lorg/fork/ui/view/MessageMoreActionsView;->access$getGapItemHeight(Lorg/fork/ui/view/MessageMoreActionsView;)I

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/view/MessageMoreActionsView$createListView$1;->this$0:Lorg/fork/ui/view/MessageMoreActionsView;

    invoke-virtual {v1}, Lorg/fork/ui/view/MessageMoreActionsView;->getItems()Ljava/util/List;

    move-result-object v1

    .line 798
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Gap;

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lorg/fork/ui/view/MessageMoreActionsView$createListView$1;->this$0:Lorg/fork/ui/view/MessageMoreActionsView;

    invoke-static {v1}, Lorg/fork/ui/view/MessageMoreActionsView;->access$getOptionItemHeight(Lorg/fork/ui/view/MessageMoreActionsView;)I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/view/MessageMoreActionsView$createListView$1;->this$0:Lorg/fork/ui/view/MessageMoreActionsView;

    invoke-virtual {v2}, Lorg/fork/ui/view/MessageMoreActionsView;->getItems()Ljava/util/List;

    move-result-object v2

    .line 798
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 45
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method
