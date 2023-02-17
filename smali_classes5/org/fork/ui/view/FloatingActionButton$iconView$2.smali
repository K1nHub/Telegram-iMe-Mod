.class final Lorg/fork/ui/view/FloatingActionButton$iconView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FloatingActionButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/FloatingActionButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/Components/RLottieImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/FloatingActionButton;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/FloatingActionButton$iconView$2;->this$0:Lorg/fork/ui/view/FloatingActionButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/fork/ui/view/FloatingActionButton$iconView$2;->invoke()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/fork/ui/view/FloatingActionButton$iconView$2;->this$0:Lorg/fork/ui/view/FloatingActionButton;

    invoke-static {v0}, Lorg/fork/ui/view/FloatingActionButton;->access$initIconView(Lorg/fork/ui/view/FloatingActionButton;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    return-object v0
.end method
