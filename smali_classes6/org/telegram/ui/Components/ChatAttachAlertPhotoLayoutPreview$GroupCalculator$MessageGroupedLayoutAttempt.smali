.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;
.super Ljava/lang/Object;
.source "ChatAttachAlertPhotoLayoutPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageGroupedLayoutAttempt"
.end annotation


# instance fields
.field public heights:[F

.field public lineCounts:[I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;IIFF)V
    .locals 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array v0, p1, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 323
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->lineCounts:[I

    new-array p1, p1, [F

    aput p4, p1, v1

    aput p5, p1, p2

    .line 324
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->heights:[F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;IIIFFF)V
    .locals 2

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p3, 0x2

    aput p4, v0, p3

    .line 328
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->lineCounts:[I

    new-array p1, p1, [F

    aput p5, p1, v1

    aput p6, p1, p2

    aput p7, p1, p3

    .line 329
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->heights:[F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;IIIIFFFF)V
    .locals 2

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array v0, p1, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p3, 0x2

    aput p4, v0, p3

    const/4 p4, 0x3

    aput p5, v0, p4

    .line 333
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->lineCounts:[I

    new-array p1, p1, [F

    aput p6, p1, v1

    aput p7, p1, p2

    aput p8, p1, p3

    aput p9, p1, p4

    .line 334
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->heights:[F

    return-void
.end method
