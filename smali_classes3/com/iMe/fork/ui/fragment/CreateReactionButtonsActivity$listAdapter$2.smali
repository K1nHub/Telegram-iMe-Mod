.class final Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateReactionButtonsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;
    .locals 3

    .line 91
    new-instance v0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getResourceManager(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listAdapter$2;->invoke()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    return-object v0
.end method
