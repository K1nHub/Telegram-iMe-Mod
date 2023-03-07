.class public Ldrinkless/org/ton/TonApi$RawCreateQuery;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawCreateQuery"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x72f37555


# instance fields
.field public body:[B

.field public destination:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public initCode:[B

.field public initData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5831
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AccountAddress;[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "destination",
            "initCode",
            "initData",
            "body"
        }
    .end annotation

    .line 5834
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5835
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawCreateQuery;->destination:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 5836
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$RawCreateQuery;->initCode:[B

    .line 5837
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$RawCreateQuery;->initData:[B

    .line 5838
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$RawCreateQuery;->body:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x72f37555

    return v0
.end method
