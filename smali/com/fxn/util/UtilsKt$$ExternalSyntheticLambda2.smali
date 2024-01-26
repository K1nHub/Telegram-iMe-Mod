.class public final synthetic Lcom/fxn/util/UtilsKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Landroid/view/ViewPropertyAnimator;

.field public final synthetic f$2:Landroid/widget/LinearLayout;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/view/ViewPropertyAnimator;Landroid/widget/LinearLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fxn/util/UtilsKt$$ExternalSyntheticLambda2;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fxn/util/UtilsKt$$ExternalSyntheticLambda2;->f$1:Landroid/view/ViewPropertyAnimator;

    iput-object p3, p0, Lcom/fxn/util/UtilsKt$$ExternalSyntheticLambda2;->f$2:Landroid/widget/LinearLayout;

    iput p4, p0, Lcom/fxn/util/UtilsKt$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/fxn/util/UtilsKt$$ExternalSyntheticLambda2;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fxn/util/UtilsKt$$ExternalSyntheticLambda2;->f$1:Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/fxn/util/UtilsKt$$ExternalSyntheticLambda2;->f$2:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/fxn/util/UtilsKt$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/fxn/util/UtilsKt;->$r8$lambda$Hlhrt0CuHivMSMj5m2dTO18nVdY(Landroid/widget/TextView;Landroid/view/ViewPropertyAnimator;Landroid/widget/LinearLayout;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
