.class final Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$mainTopic$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ArchiveSwitchTopicsBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/topics/TopicView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$mainTopic$2;->this$0:Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/topics/TopicView;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$mainTopic$2;->this$0:Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->access$initTopic(Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;Z)Lcom/iMe/ui/topics/TopicView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar$mainTopic$2;->invoke()Lcom/iMe/ui/topics/TopicView;

    move-result-object v0

    return-object v0
.end method
