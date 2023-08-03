.class public abstract Lorg/telegram/tgnet/TLRPC$InputStickerSet;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public access_hash:J

.field public id:J

.field public short_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31951
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 31985
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultTopicIcons;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultTopicIcons;-><init>()V

    goto :goto_0

    .line 31979
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    goto :goto_0

    .line 31982
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiGenericAnimations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiGenericAnimations;-><init>()V

    goto :goto_0

    .line 31970
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetAnimatedEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetAnimatedEmoji;-><init>()V

    goto :goto_0

    .line 31961
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    goto :goto_0

    .line 31973
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetDice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetDice;-><init>()V

    goto :goto_0

    .line 31976
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetPremiumGifts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetPremiumGifts;-><init>()V

    goto :goto_0

    .line 31964
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    goto :goto_0

    .line 31967
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 31989
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in InputStickerSet"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 31992
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79e33760 -> :sswitch_8
        -0x62185d97 -> :sswitch_7
        -0x3774c4fe -> :sswitch_6
        -0x1980adf2 -> :sswitch_5
        -0x49d46b -> :sswitch_4
        0x28703c8 -> :sswitch_3
        0x4c4d4ce -> :sswitch_2
        0x29d0f5ee -> :sswitch_1
        0x44c1f8e9 -> :sswitch_0
    .end sparse-switch
.end method
