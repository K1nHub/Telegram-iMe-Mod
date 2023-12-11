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

    .line 13491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13492
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    .line 13493
    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 13496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13497
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    .line 13498
    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    .line 13499
    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    return-void
.end method
