.class public Ldrinkless/org/ton/TonApi$BlocksSignature;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksSignature"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x48ed773f


# instance fields
.field public nodeIdShort:[B

.field public signature:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1918
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

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
            "nodeIdShort",
            "signature"
        }
    .end annotation

    .line 1921
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1922
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksSignature;->nodeIdShort:[B

    .line 1923
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$BlocksSignature;->signature:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x48ed773f

    return v0
.end method
