.class public final Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "TelegramViewPagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->initListView()Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    .line 297
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 299
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 300
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$checkScroll(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
