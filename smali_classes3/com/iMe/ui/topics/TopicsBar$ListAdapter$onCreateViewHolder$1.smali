.class public final Lcom/iMe/ui/topics/TopicsBar$ListAdapter$onCreateViewHolder$1;
.super Lcom/iMe/ui/topics/TopicView;
.source "TopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/topics/TopicsBar;


# direct methods
.method constructor <init>(Lcom/iMe/ui/topics/TopicsBar;Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    const-string p1, "context"

    .line 306
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/iMe/ui/topics/TopicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicView;->getTopic()Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsBar;->access$getEditingAnimationProgress$p(Lcom/iMe/ui/topics/TopicsBar;)F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 309
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsBar;->access$getEditingAnimationProgress$p(Lcom/iMe/ui/topics/TopicsBar;)F

    move-result v0

    iget v1, p0, Lcom/iMe/ui/topics/TopicView;->position:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    :goto_2
    mul-float/2addr v0, v1

    const v1, 0x3f28f5c3    # 0.66f

    .line 310
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 314
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 311
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 317
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
