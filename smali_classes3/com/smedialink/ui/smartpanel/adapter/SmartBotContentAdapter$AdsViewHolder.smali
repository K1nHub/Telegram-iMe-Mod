.class public final Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$AdsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SmartBotContentAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AdsViewHolder"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;",
            ")V"
        }
    .end annotation

    const-string p1, "binding"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$AdsViewHolder;->binding:Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;

    return-void
.end method


# virtual methods
.method public final bindTo(Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    check-cast p1, Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;

    .line 284
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$AdsViewHolder;->binding:Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;

    .line 285
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;->adsPhrase:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;->getPhrase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
