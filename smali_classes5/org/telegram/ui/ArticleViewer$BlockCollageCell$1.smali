.class Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 8422
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 1

    .line 8425
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$17300(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8428
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method
