.class public Ldrinkless/org/ton/TonApi$UnpackedAccountAddress;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnpackedAccountAddress"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x70d41436


# instance fields
.field public addr:[B

.field public bounceable:Z

.field public testnet:Z

.field public workchainId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1523
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZZ[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "workchainId",
            "bounceable",
            "testnet",
            "addr"
        }
    .end annotation

    .line 1526
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1527
    iput p1, p0, Ldrinkless/org/ton/TonApi$UnpackedAccountAddress;->workchainId:I

    .line 1528
    iput-boolean p2, p0, Ldrinkless/org/ton/TonApi$UnpackedAccountAddress;->bounceable:Z

    .line 1529
    iput-boolean p3, p0, Ldrinkless/org/ton/TonApi$UnpackedAccountAddress;->testnet:Z

    .line 1530
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$UnpackedAccountAddress;->addr:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x70d41436

    return v0
.end method
