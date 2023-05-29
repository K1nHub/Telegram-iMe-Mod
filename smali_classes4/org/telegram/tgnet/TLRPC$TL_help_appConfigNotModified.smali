.class public Lorg/telegram/tgnet/TLRPC$TL_help_appConfigNotModified;
.super Lorg/telegram/tgnet/TLRPC$help_AppConfig;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x7cde641d


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10032
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_AppConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 10036
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_help_appConfigNotModified;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
