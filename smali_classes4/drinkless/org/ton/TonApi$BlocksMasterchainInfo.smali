.class public Ldrinkless/org/ton/TonApi$BlocksMasterchainInfo;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksMasterchainInfo"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x31ca434b


# instance fields
.field public init:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public last:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public stateRootHash:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1787
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;[BLdrinkless/org/ton/TonApi$TonBlockIdExt;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "last",
            "stateRootHash",
            "init"
        }
    .end annotation

    .line 1790
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1791
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksMasterchainInfo;->last:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 1792
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$BlocksMasterchainInfo;->stateRootHash:[B

    .line 1793
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$BlocksMasterchainInfo;->init:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x31ca434b

    return v0
.end method
