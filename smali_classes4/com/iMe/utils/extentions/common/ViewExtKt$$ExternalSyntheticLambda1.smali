.class public final synthetic Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->$r8$lambda$uQ0gPNc1kiAAMGiKzVnPG9HhSNs(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
