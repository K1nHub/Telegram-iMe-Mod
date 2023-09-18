.class public final Lcom/iMe/utils/CornersOutlineProviderKt;
.super Ljava/lang/Object;
.source "CornersOutlineProvider.kt"


# direct methods
.method public static final roundCorners(Landroid/view/View;F)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/iMe/utils/CornersOutlineProvider;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, v1}, Lcom/iMe/utils/CornersOutlineProvider;-><init>(Lcom/iMe/utils/RoundCorners;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 68
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public static synthetic roundCorners$default(Landroid/view/View;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x40800000    # 4.0f

    .line 66
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/utils/CornersOutlineProviderKt;->roundCorners(Landroid/view/View;F)V

    return-void
.end method
