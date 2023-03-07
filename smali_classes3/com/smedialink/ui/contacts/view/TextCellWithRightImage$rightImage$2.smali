.class final Lcom/smedialink/ui/contacts/view/TextCellWithRightImage$rightImage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TextCellWithRightImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;-><init>(Landroid/content/Context;IZ)V
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
.field final synthetic this$0:Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage$rightImage$2;->this$0:Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage$rightImage$2;->this$0:Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;

    invoke-static {v0}, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;->access$initRightImageView(Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage$rightImage$2;->invoke()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
