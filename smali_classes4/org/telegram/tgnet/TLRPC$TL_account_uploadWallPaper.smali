.class public Lorg/telegram/tgnet/TLRPC$TL_account_uploadWallPaper;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x227ac99f


# instance fields
.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public mime_type:Ljava/lang/String;

.field public settings:Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54848
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54856
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 54860
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadWallPaper;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54861
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadWallPaper;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 54862
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadWallPaper;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 54863
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadWallPaper;->settings:Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
