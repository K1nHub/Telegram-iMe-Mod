.class final Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateReactionButtonsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_apply:Lorg/fork/ui/view/MovingReactionCell;

.field final synthetic this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/fork/ui/view/MovingReactionCell;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    iput-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;->$this_apply:Lorg/fork/ui/view/MovingReactionCell;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListAdapter(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;->$this_apply:Lorg/fork/ui/view/MovingReactionCell;

    invoke-static {p1, v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->access$removeEmojiItem(Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;Lorg/fork/ui/view/MovingReactionCell;)V

    return-void
.end method
