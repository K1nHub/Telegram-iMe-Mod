.class public final Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;
.super Lcom/google/android/material/tabs/TabLayout;
.source "CustomTabLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/shop/view/custom/CustomTabLayout$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/shop/view/custom/CustomTabLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/shop/view/custom/CustomTabLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 17
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;->initTabMinWidth(I)V

    return-void
.end method

.method private final getScreenSize(Landroid/content/Context;)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 42
    fill-array-data v0, :array_0

    const-string v1, "window"

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    .line 47
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 49
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 51
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 52
    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 54
    invoke-direct {p0, v0}, Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;->isScreenSizeRetrieved([I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v4, v0, v3

    .line 58
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v1, v0, v2

    .line 62
    :cond_0
    invoke-direct {p0, v0}, Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;->isScreenSizeRetrieved([I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v1

    aput v1, v0, v3

    .line 64
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    aput p1, v0, v2

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final isScreenSizeRetrieved([I)Z
    .locals 3

    const/4 v0, 0x0

    .line 38
    aget v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget p1, p1, v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final initTabMinWidth(I)V
    .locals 2

    .line 21
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 22
    aget v0, v0, v1

    div-int/2addr v0, p1

    .line 27
    :try_start_0
    const-class p1, Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "scrollableTabMinWidth"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const-string v1, "TabLayout::class.java.ge\u2026SCROLLABLE_TAB_MIN_WIDTH)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method
