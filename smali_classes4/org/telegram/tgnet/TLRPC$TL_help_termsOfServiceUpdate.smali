.class public Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;
.super Lorg/telegram/tgnet/TLRPC$help_TermsOfServiceUpdate;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x28ecf961


# instance fields
.field public expires:I

.field public terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21907
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_TermsOfServiceUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 21914
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;->expires:I

    .line 21915
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 21919
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21920
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;->expires:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21921
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfServiceUpdate;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
