.class public Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;
.super Lorg/telegram/tgnet/TLRPC$help_TermsOfServiceUpdate;
.source "TLRPC.java"


# instance fields
.field public expires:I

.field public terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23238
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_TermsOfServiceUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 23245
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;->expires:I

    .line 23246
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x28ecf961

    .line 23250
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23251
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;->expires:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23252
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
