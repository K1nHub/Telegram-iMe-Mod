.class Lorg/telegram/ui/Components/AnimationProperties$5;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
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
        "Lorg/telegram/ui/Components/AnimationProperties$FloatProperty<",
        "Lorg/telegram/ui/Components/ClippingImageView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Components/ClippingImageView;)Ljava/lang/Float;
    .locals 0

    .line 100
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ClippingImageView;->getAnimationProgress()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$5;->get(Lorg/telegram/ui/Components/ClippingImageView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 92
    check-cast p1, Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/AnimationProperties$5;->setValue(Lorg/telegram/ui/Components/ClippingImageView;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/Components/ClippingImageView;F)V
    .locals 0

    .line 95
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationProgress(F)V

    return-void
.end method
