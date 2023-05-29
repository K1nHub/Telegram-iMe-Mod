.class final Lcom/iMe/ui/topics/TopicsBar$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TopicsBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/topics/TopicsBar;-><init>(Landroid/content/Context;Lcom/iMe/ui/topics/TopicsBar$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/topics/TopicsBar$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/topics/TopicsBar;


# direct methods
.method constructor <init>(Lcom/iMe/ui/topics/TopicsBar;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsBar$listAdapter$2;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/topics/TopicsBar$ListAdapter;
    .locals 2

    .line 38
    new-instance v0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsBar$listAdapter$2;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-direct {v0, v1}, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;-><init>(Lcom/iMe/ui/topics/TopicsBar;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar$listAdapter$2;->invoke()Lcom/iMe/ui/topics/TopicsBar$ListAdapter;

    move-result-object v0

    return-object v0
.end method
