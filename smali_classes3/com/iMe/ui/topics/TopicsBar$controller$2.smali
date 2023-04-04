.class final Lcom/iMe/ui/topics/TopicsBar$controller$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TopicsBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/topics/TopicsBar;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/controller/ForkTopicsController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/topics/TopicsBar;


# direct methods
.method constructor <init>(Lcom/iMe/ui/topics/TopicsBar;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsBar$controller$2;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/controller/ForkTopicsController;
    .locals 2

    .line 35
    sget-object v0, Lcom/iMe/fork/controller/ForkTopicsController;->Companion:Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsBar$controller$2;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-static {v1}, Lcom/iMe/ui/topics/TopicsBar;->access$getCurrentAccount$p(Lcom/iMe/ui/topics/TopicsBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar$controller$2;->invoke()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    return-object v0
.end method
