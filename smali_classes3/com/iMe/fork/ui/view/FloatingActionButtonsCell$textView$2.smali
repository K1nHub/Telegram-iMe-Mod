.class final Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$textView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FloatingActionButtonsCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/ActionBar/SimpleTextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$textView$2;->this$0:Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$textView$2;->invoke()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$textView$2;->this$0:Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->access$initTextView(Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    return-object v0
.end method
