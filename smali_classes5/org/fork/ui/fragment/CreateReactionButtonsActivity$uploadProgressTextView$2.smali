.class final Lorg/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressTextView$2;
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
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressTextView$2;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressTextView$2;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$uploadProgressTextView(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressTextView$2;->invoke()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
