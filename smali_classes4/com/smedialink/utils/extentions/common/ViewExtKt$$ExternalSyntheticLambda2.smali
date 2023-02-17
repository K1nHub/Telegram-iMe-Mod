.class public final synthetic Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/fork/utils/Callbacks$Callback;


# direct methods
.method public synthetic constructor <init>(ILorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;->f$1:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;->f$1:Lorg/fork/utils/Callbacks$Callback;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->$r8$lambda$JyobJ1Bz83o5q-22pcIWpCQLqR4(ILorg/fork/utils/Callbacks$Callback;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
