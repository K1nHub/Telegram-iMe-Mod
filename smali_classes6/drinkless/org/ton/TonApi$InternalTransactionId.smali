.class public Ldrinkless/org/ton/TonApi$InternalTransactionId;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalTransactionId"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x3afafcde


# instance fields
.field public hash:[B

.field public lt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2303
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lt",
            "hash"
        }
    .end annotation

    .line 2306
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2307
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$InternalTransactionId;->lt:J

    .line 2308
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$InternalTransactionId;->hash:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x3afafcde

    return v0
.end method
