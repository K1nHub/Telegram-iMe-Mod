.class public Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksBlockLinkBack"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x418c8035


# instance fields
.field public destProof:[B

.field public from:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public proof:[B

.field public stateProof:[B

.field public to:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public toKeyBlock:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1652
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLdrinkless/org/ton/TonApi$TonBlockIdExt;Ldrinkless/org/ton/TonApi$TonBlockIdExt;[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "toKeyBlock",
            "from",
            "to",
            "destProof",
            "proof",
            "stateProof"
        }
    .end annotation

    .line 1655
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1656
    iput-boolean p1, p0, Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;->toKeyBlock:Z

    .line 1657
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;->from:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 1658
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;->to:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 1659
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;->destProof:[B

    .line 1660
    iput-object p5, p0, Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;->proof:[B

    .line 1661
    iput-object p6, p0, Ldrinkless/org/ton/TonApi$BlocksBlockLinkBack;->stateProof:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x418c8035

    return v0
.end method
