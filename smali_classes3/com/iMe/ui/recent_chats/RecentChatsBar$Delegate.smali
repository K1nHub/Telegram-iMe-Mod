.class public interface abstract Lcom/iMe/ui/recent_chats/RecentChatsBar$Delegate;
.super Ljava/lang/Object;
.source "RecentChatsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/recent_chats/RecentChatsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract onLongClickRelease()V
.end method

.method public abstract onMove(F)V
.end method

.method public abstract onRecentChatClick(Lcom/iMe/storage/domain/model/HistoryDialogModel;Landroid/view/View;)V
.end method

.method public abstract onRecentChatLongClick(Lcom/iMe/storage/domain/model/HistoryDialogModel;Landroid/view/View;)V
.end method
