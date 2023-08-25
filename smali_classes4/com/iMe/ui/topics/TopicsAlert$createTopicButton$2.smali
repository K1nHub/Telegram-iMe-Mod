.class final Lcom/iMe/ui/topics/TopicsAlert$createTopicButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TopicsAlert.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/topics/TopicsAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/topics/TopicsAlert;


# direct methods
.method constructor <init>(Lcom/iMe/ui/topics/TopicsAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$createTopicButton$2;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$createTopicButton$2;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iMe/ui/topics/TopicsAlert;->access$initBottomButton(Lcom/iMe/ui/topics/TopicsAlert;Z)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsAlert$createTopicButton$2;->invoke()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
