.class final Lcom/iMe/fork/ui/view/MovingReactionCell$deleteImageView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MovingReactionCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/MovingReactionCell;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/MovingReactionCell;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/MovingReactionCell;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/MovingReactionCell$deleteImageView$2;->this$0:Lcom/iMe/fork/ui/view/MovingReactionCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MovingReactionCell$deleteImageView$2;->this$0:Lcom/iMe/fork/ui/view/MovingReactionCell;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/MovingReactionCell;->access$initDeleteImageView(Lcom/iMe/fork/ui/view/MovingReactionCell;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/MovingReactionCell$deleteImageView$2;->invoke()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
