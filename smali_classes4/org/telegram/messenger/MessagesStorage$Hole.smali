.class Lorg/telegram/messenger/MessagesStorage$Hole;
.super Ljava/lang/Object;
.source "MessagesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Hole"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field public type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 13303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13304
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    .line 13305
    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 13308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13309
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    .line 13310
    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    .line 13311
    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    return-void
.end method
