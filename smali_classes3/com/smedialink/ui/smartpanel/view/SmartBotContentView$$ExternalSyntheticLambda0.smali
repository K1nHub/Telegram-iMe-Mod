.class public final synthetic Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

.field public final synthetic f$1:Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    iput-object p2, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;

    invoke-static {v0, v1, p1, p2}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->$r8$lambda$Xd1DGVUa2v4ZYiKVaMr9TYVFFcA(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;Landroid/view/View;I)V

    return-void
.end method
