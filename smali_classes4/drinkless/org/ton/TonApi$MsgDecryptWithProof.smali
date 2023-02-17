.class public Ldrinkless/org/ton/TonApi$MsgDecryptWithProof;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgDecryptWithProof"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x7ddd377f


# instance fields
.field public data:Ldrinkless/org/ton/TonApi$MsgDataEncrypted;

.field public proof:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5303
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([BLdrinkless/org/ton/TonApi$MsgDataEncrypted;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proof",
            "data"
        }
    .end annotation

    .line 5306
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5307
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$MsgDecryptWithProof;->proof:[B

    .line 5308
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$MsgDecryptWithProof;->data:Ldrinkless/org/ton/TonApi$MsgDataEncrypted;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x7ddd377f

    return v0
.end method
