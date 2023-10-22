.class final Lcom/iMe/ui/custom/ActionButton$loadingDrawable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ActionButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/custom/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/Components/LoadingDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/custom/ActionButton;


# direct methods
.method constructor <init>(Lcom/iMe/ui/custom/ActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/custom/ActionButton$loadingDrawable$2;->this$0:Lcom/iMe/ui/custom/ActionButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/iMe/ui/custom/ActionButton$loadingDrawable$2;->invoke()Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/custom/ActionButton$loadingDrawable$2;->this$0:Lcom/iMe/ui/custom/ActionButton;

    invoke-static {v0}, Lcom/iMe/ui/custom/ActionButton;->access$initLoadingDrawable(Lcom/iMe/ui/custom/ActionButton;)Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v0

    return-object v0
.end method
