.class public Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupedMessagePosition"
.end annotation


# instance fields
.field public aspectRatio:F

.field public edge:Z

.field public flags:I

.field public last:Z

.field public left:F

.field public leftSpanOffset:I

.field public maxX:B

.field public maxY:B

.field public minX:B

.field public minY:B

.field public ph:F

.field public pw:I

.field public siblingHeights:[F

.field public spanSize:I

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNeighborByBottom()Z
    .locals 1

    .line 1116
    iget v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNeighborByLeft()Z
    .locals 2

    .line 1104
    iget v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNeighborByRight()Z
    .locals 1

    .line 1112
    iget v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNeighborByTop()Z
    .locals 1

    .line 1108
    iget v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(IIIIIFI)V
    .locals 0

    int-to-byte p1, p1

    .line 1141
    iput-byte p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    int-to-byte p1, p2

    .line 1142
    iput-byte p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    int-to-byte p1, p3

    .line 1143
    iput-byte p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    int-to-byte p1, p4

    .line 1144
    iput-byte p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    .line 1145
    iput p5, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    .line 1146
    iput p5, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1147
    iput p6, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    int-to-byte p1, p7

    .line 1148
    iput p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    return-void
.end method
