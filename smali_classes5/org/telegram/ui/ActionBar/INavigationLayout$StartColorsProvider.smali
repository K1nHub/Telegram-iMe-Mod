.class public Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;
.super Ljava/lang/Object;
.source "INavigationLayout.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/INavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartColorsProvider"
.end annotation


# instance fields
.field colors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field keysToSave:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->colors:Ljava/util/HashMap;

    const-string v1, "chat_outBubble"

    const-string v2, "chat_outBubbleGradient"

    const-string v3, "chat_outBubbleGradient2"

    const-string v4, "chat_outBubbleGradient3"

    const-string v5, "chat_outBubbleGradientAnimated"

    const-string v6, "chat_outBubbleShadow"

    .line 378
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->keysToSave:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic applyServiceShaderMatrix(IIFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    return-void
.end method

.method public getColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->colors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public synthetic getColorOrDefault(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->colors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public synthetic getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getDrawable(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public synthetic hasGradientService()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$hasGradientService(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    return v0
.end method

.method public saveColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->colors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->keysToSave:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 400
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->colors:Ljava/util/HashMap;

    invoke-interface {p1, v3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic setAnimatedColor(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;I)V

    return-void
.end method
