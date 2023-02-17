.class public Ldrinkless/org/ton/TonApi$QueryFees;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryFees"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x603d17be


# instance fields
.field public destinationFees:[Ldrinkless/org/ton/TonApi$Fees;

.field public sourceFees:Ldrinkless/org/ton/TonApi$Fees;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3019
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$Fees;[Ldrinkless/org/ton/TonApi$Fees;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceFees",
            "destinationFees"
        }
    .end annotation

    .line 3022
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3023
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$QueryFees;->sourceFees:Ldrinkless/org/ton/TonApi$Fees;

    .line 3024
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$QueryFees;->destinationFees:[Ldrinkless/org/ton/TonApi$Fees;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x603d17be

    return v0
.end method
