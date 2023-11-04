.class public Lorg/telegram/messenger/MessageObject$TextRange;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextRange"
.end annotation


# instance fields
.field public code:Z

.field public end:I

.field public language:Ljava/lang/String;

.field public quote:Z

.field public start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 9370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9371
    iput p1, p0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    .line 9372
    iput p2, p0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    return-void
.end method

.method public constructor <init>(IIZZLjava/lang/String;)V
    .locals 0

    .line 9374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9375
    iput p1, p0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    .line 9376
    iput p2, p0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    .line 9377
    iput-boolean p3, p0, Lorg/telegram/messenger/MessageObject$TextRange;->quote:Z

    .line 9378
    iput-boolean p4, p0, Lorg/telegram/messenger/MessageObject$TextRange;->code:Z

    .line 9379
    iput-object p5, p0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    return-void
.end method
