.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;
.super Ljava/lang/Object;
.source "LPhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerPosition"
.end annotation


# instance fields
.field private angle:F

.field private position:Lorg/telegram/ui/Components/Point;

.field private scale:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Point;FF)V
    .locals 0

    .line 2944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2945
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->position:Lorg/telegram/ui/Components/Point;

    .line 2946
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->scale:F

    .line 2947
    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->angle:F

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;
    .locals 0

    .line 2939
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->position:Lorg/telegram/ui/Components/Point;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)F
    .locals 0

    .line 2939
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->angle:F

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)F
    .locals 0

    .line 2939
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->scale:F

    return p0
.end method
