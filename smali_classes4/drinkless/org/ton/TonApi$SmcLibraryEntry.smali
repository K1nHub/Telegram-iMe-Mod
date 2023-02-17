.class public Ldrinkless/org/ton/TonApi$SmcLibraryEntry;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcLibraryEntry"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5c2a2df4


# instance fields
.field public data:[B

.field public hash:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3405
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
            "hash",
            "data"
        }
    .end annotation

    .line 3408
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3409
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$SmcLibraryEntry;->hash:[B

    .line 3410
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$SmcLibraryEntry;->data:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5c2a2df4

    return v0
.end method
