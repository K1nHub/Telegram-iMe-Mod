.class public final Lcom/smedialink/ui/shop/BotInfoActivity$createView$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "BotInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/BotInfoActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/shop/BotInfoActivity;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/shop/BotInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/shop/BotInfoActivity$createView$1;->this$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/smedialink/ui/shop/BotInfoActivity$createView$1;->this$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method
