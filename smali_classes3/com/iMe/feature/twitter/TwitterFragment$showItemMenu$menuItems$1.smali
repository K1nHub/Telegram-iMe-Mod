.class final Lcom/iMe/feature/twitter/TwitterFragment$showItemMenu$menuItems$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TwitterFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/twitter/TwitterFragment;->showItemMenu(Landroid/view/View;Lcom/iMe/model/twitter/TweetItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/twitter/TweetItem;

.field final synthetic this$0:Lcom/iMe/feature/twitter/TwitterFragment;


# direct methods
.method constructor <init>(Lcom/iMe/feature/twitter/TwitterFragment;Lcom/iMe/model/twitter/TweetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterFragment$showItemMenu$menuItems$1;->this$0:Lcom/iMe/feature/twitter/TwitterFragment;

    iput-object p2, p0, Lcom/iMe/feature/twitter/TwitterFragment$showItemMenu$menuItems$1;->$item:Lcom/iMe/model/twitter/TweetItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/iMe/feature/twitter/TwitterFragment$showItemMenu$menuItems$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterFragment$showItemMenu$menuItems$1;->this$0:Lcom/iMe/feature/twitter/TwitterFragment;

    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterFragment$showItemMenu$menuItems$1;->$item:Lcom/iMe/model/twitter/TweetItem;

    invoke-static {v0, v1}, Lcom/iMe/feature/twitter/TwitterFragment;->access$showTranslationDialog(Lcom/iMe/feature/twitter/TwitterFragment;Lcom/iMe/model/twitter/TweetItem;)Landroid/app/Dialog;

    return-void
.end method
