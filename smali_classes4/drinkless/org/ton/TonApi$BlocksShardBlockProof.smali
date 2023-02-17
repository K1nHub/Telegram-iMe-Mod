.class public Ldrinkless/org/ton/TonApi$BlocksShardBlockProof;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksShardBlockProof"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x429a0ad


# instance fields
.field public from:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public links:[Ldrinkless/org/ton/TonApi$BlocksShardBlockLink;

.field public mcId:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public mcProof:[Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1854
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;Ldrinkless/org/ton/TonApi$TonBlockIdExt;[Ldrinkless/org/ton/TonApi$BlocksShardBlockLink;[Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "mcId",
            "links",
            "mcProof"
        }
    .end annotation

    .line 1857
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1858
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksShardBlockProof;->from:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 1859
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$BlocksShardBlockProof;->mcId:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 1860
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$BlocksShardBlockProof;->links:[Ldrinkless/org/ton/TonApi$BlocksShardBlockLink;

    .line 1861
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$BlocksShardBlockProof;->mcProof:[Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x429a0ad

    return v0
.end method
