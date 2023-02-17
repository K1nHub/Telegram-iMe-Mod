.class public Ldrinkless/org/ton/TonApi$MsgDataDecryptedText;
.super Ldrinkless/org/ton/TonApi$MsgData;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgDataDecryptedText"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x4cd69f47


# instance fields
.field public text:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2460
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$MsgData;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 2463
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$MsgData;-><init>()V

    .line 2464
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$MsgDataDecryptedText;->text:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x4cd69f47

    return v0
.end method
