.class final Lcom/smedialink/ui/custom/cells/ProfileTwitterCell$imageView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ProfileTwitterCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/custom/cells/ProfileTwitterCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/custom/cells/ProfileTwitterCell;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/custom/cells/ProfileTwitterCell;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/custom/cells/ProfileTwitterCell$imageView$2;->this$0:Lcom/smedialink/ui/custom/cells/ProfileTwitterCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/smedialink/ui/custom/cells/ProfileTwitterCell$imageView$2;->this$0:Lcom/smedialink/ui/custom/cells/ProfileTwitterCell;

    invoke-static {v0}, Lcom/smedialink/ui/custom/cells/ProfileTwitterCell;->access$createImageView(Lcom/smedialink/ui/custom/cells/ProfileTwitterCell;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/cells/ProfileTwitterCell$imageView$2;->invoke()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    return-object v0
.end method
