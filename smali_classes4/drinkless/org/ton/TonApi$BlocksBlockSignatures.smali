.class public Ldrinkless/org/ton/TonApi$BlocksBlockSignatures;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksBlockSignatures"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x17fe2465


# instance fields
.field public id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public signatures:[Ldrinkless/org/ton/TonApi$BlocksSignature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1688
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;[Ldrinkless/org/ton/TonApi$BlocksSignature;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "signatures"
        }
    .end annotation

    .line 1691
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1692
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksBlockSignatures;->id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 1693
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$BlocksBlockSignatures;->signatures:[Ldrinkless/org/ton/TonApi$BlocksSignature;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x17fe2465

    return v0
.end method
