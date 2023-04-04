.class public final Lcom/iMe/ui/topics/TopicsAlert$initListView$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "TopicsAlert.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/topics/TopicsAlert;->initListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/topics/TopicsAlert;


# direct methods
.method constructor <init>(Lcom/iMe/ui/topics/TopicsAlert;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$initListView$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    .line 99
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$initListView$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getIgnoreLayout$p(Lcom/iMe/ui/topics/TopicsAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method
