.class public Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;
.super Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0xd09e07b


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30176
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 30181
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
