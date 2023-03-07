.class Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$3;
.super Ljava/lang/Object;
.source "SearchDownloadsContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$3;->this$1:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 535
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$3;->this$1:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->access$300(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    return-void
.end method
