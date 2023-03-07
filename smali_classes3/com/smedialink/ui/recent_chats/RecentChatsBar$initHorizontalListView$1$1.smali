.class public final Lcom/smedialink/ui/recent_chats/RecentChatsBar$initHorizontalListView$1$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "RecentChatsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/recent_chats/RecentChatsBar;->initHorizontalListView()Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
