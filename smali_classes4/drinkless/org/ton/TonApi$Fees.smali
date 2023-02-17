.class public Ldrinkless/org/ton/TonApi$Fees;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fees"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x63e9e6bc


# instance fields
.field public fwdFee:J

.field public gasFee:J

.field public inFwdFee:J

.field public storageFee:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 811
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inFwdFee",
            "storageFee",
            "gasFee",
            "fwdFee"
        }
    .end annotation

    .line 814
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 815
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$Fees;->inFwdFee:J

    .line 816
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$Fees;->storageFee:J

    .line 817
    iput-wide p5, p0, Ldrinkless/org/ton/TonApi$Fees;->gasFee:J

    .line 818
    iput-wide p7, p0, Ldrinkless/org/ton/TonApi$Fees;->fwdFee:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x63e9e6bc

    return v0
.end method
