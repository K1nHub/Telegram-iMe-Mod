.class Lorg/telegram/ui/Components/AnimationProperties$2;
.super Lorg/telegram/ui/Components/AnimationProperties$IntProperty;
.source "AnimationProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimationProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/AnimationProperties$IntProperty<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/Paint;)Ljava/lang/Integer;
    .locals 0

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$2;->get(Landroid/graphics/Paint;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/graphics/Paint;I)V
    .locals 0

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 56
    check-cast p1, Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/AnimationProperties$2;->setValue(Landroid/graphics/Paint;I)V

    return-void
.end method
