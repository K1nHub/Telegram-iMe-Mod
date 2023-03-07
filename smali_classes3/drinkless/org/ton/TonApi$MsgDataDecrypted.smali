.class public Ldrinkless/org/ton/TonApi$MsgDataDecrypted;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgDataDecrypted"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0xba960e9


# instance fields
.field public data:Ldrinkless/org/ton/TonApi$MsgData;

.field public proof:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2518
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BLdrinkless/org/ton/TonApi$MsgData;)V
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

    .line 2521
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2522
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$MsgDataDecrypted;->proof:[B

    .line 2523
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$MsgDataDecrypted;->data:Ldrinkless/org/ton/TonApi$MsgData;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0xba960e9

    return v0
.end method
