.class Lorg/telegram/ui/PremiumPreviewFragment$5;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PremiumPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PremiumPreviewFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$5;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    .line 633
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->SETTINGS:I

    if-ne p1, v0, :cond_0

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$5;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2100(Lorg/telegram/ui/PremiumPreviewFragment;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$5;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$500(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$5;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2100(Lorg/telegram/ui/PremiumPreviewFragment;Z)V

    goto :goto_0

    .line 641
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$5;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_2
    :goto_0
    return-void
.end method
