.class public final synthetic Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/iMe/fork/utils/Callbacks$Callback;


# direct methods
.method public synthetic constructor <init>(ILcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->$r8$lambda$ssLsQaxdAxooJHehZ9iVn3dTBm4(ILcom/iMe/fork/utils/Callbacks$Callback;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
