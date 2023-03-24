.class public Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;
.super Lorg/telegram/tgnet/TLRPC$WallPaperSettings;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x1dc1bca4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40091
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 40096
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 40097
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v2, v3

    .line 40098
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 40100
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    .line 40102
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 40103
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    .line 40105
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 40106
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    .line 40108
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 40109
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    .line 40111
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 40112
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 40114
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 40115
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 40120
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40121
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 40122
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 40123
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40124
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 40125
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40127
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 40128
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40130
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 40131
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40133
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 40134
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40136
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 40137
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40139
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 40140
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_7
    return-void
.end method
