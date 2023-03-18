.class Lorg/telegram/ui/CacheControlActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 1070
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1071
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object p1, p1, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz p1, :cond_0

    .line 1072
    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 1074
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1075
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 1076
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    :cond_1
    return-void

    .line 1080
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1082
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$300(Lorg/telegram/ui/CacheControlActivity;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1084
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$400(Lorg/telegram/ui/CacheControlActivity;)V

    :cond_5
    :goto_0
    return-void
.end method
