.class public final synthetic Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;

.field public final synthetic f$1:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;

    iput-object p2, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IFF)Z
    .locals 6

    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;

    iget-object v1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->$r8$lambda$FtvHf5hYkbodcSI8ve5WhjyoRxQ(Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Landroid/view/View;IFF)Z

    move-result p1

    return p1
.end method

.method public synthetic onLongClickRelease()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended$-CC;->$default$onLongClickRelease(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    return-void
.end method

.method public synthetic onMove(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended$-CC;->$default$onMove(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;FF)V

    return-void
.end method
