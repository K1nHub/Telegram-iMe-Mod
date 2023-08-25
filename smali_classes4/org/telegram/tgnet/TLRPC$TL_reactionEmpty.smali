.class public Lorg/telegram/tgnet/TLRPC$TL_reactionEmpty;
.super Lorg/telegram/tgnet/TLRPC$Reaction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x79f5d419


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52686
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Reaction;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 52691
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
