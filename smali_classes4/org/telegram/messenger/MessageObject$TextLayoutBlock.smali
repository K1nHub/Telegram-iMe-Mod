.class public Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextLayoutBlock"
.end annotation


# static fields
.field public static final FLAG_NOT_RTL:I = 0x2

.field public static final FLAG_RTL:I = 0x1


# instance fields
.field public charactersEnd:I

.field public charactersOffset:I

.field public directionFlags:B

.field public height:I

.field public heightByOffset:I

.field public spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field public spoilersPatchedTextLayout:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field public textLayout:Landroid/text/StaticLayout;

.field public textYOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->spoilersPatchedTextLayout:Ljava/util/concurrent/atomic/AtomicReference;

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->spoilers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isRtl()Z
    .locals 2

    .line 802
    iget-byte v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
