.class public Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroupsNotModified;
.super Lorg/telegram/tgnet/TLRPC$messages_EmojiGroups;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x6fb4ad87


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41141
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_EmojiGroups;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 41146
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroupsNotModified;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
