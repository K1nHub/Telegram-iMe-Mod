.class final Lorg/fork/ui/fragment/CreateReactionButtonsActivity$uploadCircleView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateReactionButtonsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/CreateReactionButtonsActivity;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$uploadCircleView$2;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$uploadCircleView$2;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$initProgressCircleView(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$uploadCircleView$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
