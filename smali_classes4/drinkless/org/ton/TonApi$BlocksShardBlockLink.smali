.class public Ldrinkless/org/ton/TonApi$BlocksShardBlockLink;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksShardBlockLink"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x591fea97


# instance fields
.field public id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public proof:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1820
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "proof"
        }
    .end annotation

    .line 1823
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1824
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksShardBlockLink;->id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 1825
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$BlocksShardBlockLink;->proof:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x591fea97

    return v0
.end method
