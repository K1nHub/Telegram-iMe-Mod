.class public Lorg/telegram/tgnet/TLRPC$TL_account_emojiStatusesNotModified;
.super Lorg/telegram/tgnet/TLRPC$account_EmojiStatuses;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x2f7319bb


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18959
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$account_EmojiStatuses;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 18964
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_emojiStatusesNotModified;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
