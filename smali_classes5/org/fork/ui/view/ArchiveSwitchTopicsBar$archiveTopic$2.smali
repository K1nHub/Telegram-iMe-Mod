.class final Lorg/fork/ui/view/ArchiveSwitchTopicsBar$archiveTopic$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ArchiveSwitchTopicsBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/ArchiveSwitchTopicsBar;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/smedialink/ui/topics/TopicView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/ArchiveSwitchTopicsBar;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/ArchiveSwitchTopicsBar;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/ArchiveSwitchTopicsBar$archiveTopic$2;->this$0:Lorg/fork/ui/view/ArchiveSwitchTopicsBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/smedialink/ui/topics/TopicView;
    .locals 2

    .line 18
    iget-object v0, p0, Lorg/fork/ui/view/ArchiveSwitchTopicsBar$archiveTopic$2;->this$0:Lorg/fork/ui/view/ArchiveSwitchTopicsBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/fork/ui/view/ArchiveSwitchTopicsBar;->access$initTopic(Lorg/fork/ui/view/ArchiveSwitchTopicsBar;Z)Lcom/smedialink/ui/topics/TopicView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/fork/ui/view/ArchiveSwitchTopicsBar$archiveTopic$2;->invoke()Lcom/smedialink/ui/topics/TopicView;

    move-result-object v0

    return-object v0
.end method
