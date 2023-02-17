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

    .line 13130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13131
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    .line 13132
    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 13135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13136
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    .line 13137
    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    .line 13138
    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    return-void
.end method
