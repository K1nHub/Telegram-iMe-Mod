.class public Ldrinkless/org/ton/TonApi$BlocksGetShardBlockProof;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksGetShardBlockProof"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x19ed9ee7


# instance fields
.field public from:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4058
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;ILdrinkless/org/ton/TonApi$TonBlockIdExt;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "mode",
            "from"
        }
    .end annotation

    .line 4061
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4062
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksGetShardBlockProof;->id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 4063
    iput p2, p0, Ldrinkless/org/ton/TonApi$BlocksGetShardBlockProof;->mode:I

    .line 4064
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$BlocksGetShardBlockProof;->from:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x19ed9ee7

    return v0
.end method
