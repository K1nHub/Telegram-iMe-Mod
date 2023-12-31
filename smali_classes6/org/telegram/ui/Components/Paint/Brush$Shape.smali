.class public abstract Lorg/telegram/ui/Components/Paint/Brush$Shape;
.super Lorg/telegram/ui/Components/Paint/Brush;
.source "Brush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Brush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Brush$Shape$Arrow;,
        Lorg/telegram/ui/Components/Paint/Brush$Shape$Bubble;,
        Lorg/telegram/ui/Components/Paint/Brush$Shape$Star;,
        Lorg/telegram/ui/Components/Paint/Brush$Shape$Rectangle;,
        Lorg/telegram/ui/Components/Paint/Brush$Shape$Circle;
    }
.end annotation


# static fields
.field public static SHAPES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Paint/Brush$Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Brush$Shape;

    .line 323
    new-instance v1, Lorg/telegram/ui/Components/Paint/Brush$Shape$Circle;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/Brush$Shape$Circle;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Brush$Shape$Rectangle;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/Brush$Shape$Rectangle;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Brush$Shape$Star;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/Brush$Shape$Star;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Brush$Shape$Bubble;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/Brush$Shape$Bubble;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Brush$Shape$Arrow;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/Brush$Shape$Arrow;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Brush;-><init>()V

    return-void
.end method

.method public static make(I)Lorg/telegram/ui/Components/Paint/Brush$Shape;
    .locals 3

    if-ltz p0, :cond_0

    .line 332
    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p0, v0, :cond_0

    .line 335
    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    return-object p0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shape type must be in range from 0 to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getFilledIconRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShaderName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "brush"

    return-object p1

    :cond_1
    const-string p1, "shape"

    return-object p1
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShapeShaderType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
