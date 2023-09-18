.class final Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$textView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HorizontalActionButtonsView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;-><init>(Landroid/content/Context;Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;)V
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
.field final synthetic this$0:Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;


# direct methods
.method constructor <init>(Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$textView$2;->this$0:Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$textView$2;->this$0:Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;

    invoke-static {v0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->access$initTextView(Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$textView$2;->invoke()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
