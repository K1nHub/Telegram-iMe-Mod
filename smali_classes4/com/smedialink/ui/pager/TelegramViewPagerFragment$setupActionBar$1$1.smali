.class public final Lcom/smedialink/ui/pager/TelegramViewPagerFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "TelegramViewPagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    .line 192
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 194
    iget-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->onMenuItemClick(I)V

    :goto_0
    return-void
.end method
