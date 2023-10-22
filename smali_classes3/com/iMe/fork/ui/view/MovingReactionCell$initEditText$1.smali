.class public final Lcom/iMe/fork/ui/view/MovingReactionCell$initEditText$1;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "MovingReactionCell.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/MovingReactionCell;->initEditText()Lcom/iMe/fork/ui/view/MovingReactionCell$initEditText$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/MovingReactionCell;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/MovingReactionCell;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/MovingReactionCell$initEditText$1;->this$0:Lcom/iMe/fork/ui/view/MovingReactionCell;

    .line 128
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    const-string v0, "outAttrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/iMe/fork/ui/view/MovingReactionCell$initEditText$1;->this$0:Lcom/iMe/fork/ui/view/MovingReactionCell;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getShowNextButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    .line 132
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_0
    const-string p1, "conn"

    .line 135
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
