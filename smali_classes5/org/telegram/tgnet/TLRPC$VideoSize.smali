.class public abstract Lorg/telegram/tgnet/TLRPC$VideoSize;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public background_colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public h:I

.field public location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field public size:I

.field public type:Ljava/lang/String;

.field public video_start_ts:D

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20318
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 20327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(JJLorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$VideoSize;
    .locals 2

    sparse-switch p5, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 20333
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer115;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer115;-><init>()V

    goto :goto_0

    .line 20342
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;-><init>()V

    goto :goto_0

    .line 20345
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;-><init>()V

    goto :goto_0

    .line 20336
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;-><init>()V

    goto :goto_0

    .line 20339
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSize;-><init>()V

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p6, :cond_0

    goto :goto_1

    .line 20349
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "can\'t parse magic %x in VideoSize"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 20352
    invoke-virtual {v0, p4, p6}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 20353
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez p4, :cond_5

    .line 20354
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    const-wide/16 p4, 0x0

    cmp-long p6, p0, p4

    if-nez p6, :cond_2

    cmp-long p4, p2, p4

    if-eqz p4, :cond_4

    .line 20355
    :cond_2
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p6, :cond_3

    neg-long p0, p0

    .line 20357
    iput-wide p0, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 20358
    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    iput p0, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    goto :goto_2

    :cond_3
    neg-long p0, p2

    .line 20360
    iput-wide p0, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 20361
    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit16 p0, p0, 0x3e8

    iput p0, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    goto :goto_2

    .line 20364
    :cond_4
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_5
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x21cc4f6c -> :sswitch_4
        -0x17ce3aaa -> :sswitch_3
        -0x7a3bec4 -> :sswitch_2
        0xda082fe -> :sswitch_1
        0x435bb987 -> :sswitch_0
    .end sparse-switch
.end method
