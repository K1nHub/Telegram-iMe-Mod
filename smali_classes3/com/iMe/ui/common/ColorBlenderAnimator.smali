.class public final Lcom/iMe/ui/common/ColorBlenderAnimator;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "ColorBlenderAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/AnimationProperties$FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private animationValue:F

.field private final fromColorKey:I

.field private final toColorKey:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const-string v0, "animationValue"

    .line 11
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    .line 9
    iput p1, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->fromColorKey:I

    .line 10
    iput p2, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->toColorKey:I

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget p1, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->animationValue:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/common/ColorBlenderAnimator;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput p2, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->animationValue:F

    .line 21
    iget v0, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->fromColorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 22
    iget v1, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->toColorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 20
    invoke-static {v0, v1, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 8
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/common/ColorBlenderAnimator;->setValue(Landroid/view/View;F)V

    return-void
.end method
