.class public final synthetic Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smedialink/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1, p2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->$r8$lambda$zf2liQhNJm4-eAfK5DeBx64C_7w(Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
