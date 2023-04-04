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

.field private final fromKey:Ljava/lang/String;

.field private final toKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fromKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationValue"

    .line 11
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->fromKey:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->toKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
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

    .line 19
    iput p2, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->animationValue:F

    .line 20
    iget-object v0, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->fromKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/common/ColorBlenderAnimator;->toKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

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
