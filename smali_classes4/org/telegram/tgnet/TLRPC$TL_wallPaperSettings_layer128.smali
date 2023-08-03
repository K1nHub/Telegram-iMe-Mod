.class public Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings_layer128;
.super Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x5086cf8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41656
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 41661
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

    .line 41662
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v2, v3

    .line 41663
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 41665
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    .line 41667
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 41668
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    .line 41670
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 41671
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 41673
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 41674
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 41679
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings_layer128;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41680
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

    .line 41681
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 41682
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41683
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 41684
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41686
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 41687
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41689
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 41690
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41692
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 41693
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_5
    return-void
.end method
