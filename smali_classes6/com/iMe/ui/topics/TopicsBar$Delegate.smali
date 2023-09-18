.class public interface abstract Lcom/iMe/ui/topics/TopicsBar$Delegate;
.super Ljava/lang/Object;
.source "TopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/topics/TopicsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract canPerformActions()Z
.end method

.method public abstract isTabMenuVisible()Z
.end method

.method public abstract onTopicClick(J)V
.end method

.method public abstract onTopicLongClick(Lcom/iMe/ui/topics/TopicView;)Z
.end method
