.class public final Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$BotNameViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SmartBotContentAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BotNameViewHolder"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;",
            ")V"
        }
    .end annotation

    const-string p1, "binding"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$BotNameViewHolder;->binding:Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;

    return-void
.end method


# virtual methods
.method public final bindTo(Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;)V
    .locals 2

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    check-cast p1, Lcom/iMe/ui/smartpanel/model/content/TabBotNameItem;

    .line 310
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$BotNameViewHolder;->binding:Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;

    .line 311
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;->botName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iMe/ui/smartpanel/model/content/TabBotNameItem;->getBotName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;->botName:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
