.class public Ldrinkless/org/ton/TonApi$MsgDataRaw;
.super Ldrinkless/org/ton/TonApi$MsgData;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgDataRaw"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x72f9a28a


# instance fields
.field public body:[B

.field public initState:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2405
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$MsgData;-><init>()V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "body",
            "initState"
        }
    .end annotation

    .line 2408
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$MsgData;-><init>()V

    .line 2409
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$MsgDataRaw;->body:[B

    .line 2410
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$MsgDataRaw;->initState:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x72f9a28a

    return v0
.end method
