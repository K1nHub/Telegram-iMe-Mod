.class public final Lcom/smedialink/ui/recent_chats/RecentChatsBar$setupListeners$2;
.super Ljava/lang/Object;
.source "RecentChatsBar.kt"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/recent_chats/RecentChatsBar;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/recent_chats/RecentChatsBar;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/recent_chats/RecentChatsBar;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar$setupListeners$2;->this$0:Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IFF)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 94
    iget-object p3, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar$setupListeners$2;->this$0:Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    invoke-virtual {p3}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getDelegate()Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;

    move-result-object p3

    iget-object p4, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar$setupListeners$2;->this$0:Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    invoke-static {p4}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->access$getData$p(Lcom/smedialink/ui/recent_chats/RecentChatsBar;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    invoke-interface {p3, p2, p1}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;->onItemLongListener(Lcom/smedialink/storage/domain/model/HistoryDialogModel;Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongClickRelease()V
    .locals 2

    .line 106
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar$setupListeners$2;->this$0:Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    invoke-virtual {v0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getDelegate()Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;->onLongClickRelease()V

    :cond_0
    return-void
.end method

.method public onMove(FF)V
    .locals 1

    .line 100
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar$setupListeners$2;->this$0:Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    invoke-virtual {p1}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getDelegate()Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;->onMove(F)V

    :cond_0
    return-void
.end method
