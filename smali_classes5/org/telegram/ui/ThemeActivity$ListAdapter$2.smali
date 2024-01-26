.class Lorg/telegram/ui/ThemeActivity$ListAdapter$2;
.super Lorg/telegram/ui/Cells/ChatListCell;
.source "ThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Landroid/content/Context;)V
    .locals 0

    .line 2028
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/ChatListCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected didSelectChatType(ZZ)V
    .locals 3

    .line 2031
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setUseThreeLinesLayout(Z)V

    .line 2033
    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setDialogsCompactModeEnabled(Z)V

    .line 2034
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
