.class final Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$listView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TelegramViewPagerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/Components/RecyclerListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$listView$2;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$listView$2;->invoke()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$listView$2;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    invoke-static {v0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->access$initListView(Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    return-object v0
.end method
