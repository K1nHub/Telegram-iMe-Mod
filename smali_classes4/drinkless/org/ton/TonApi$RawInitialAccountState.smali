.class public Ldrinkless/org/ton/TonApi$RawInitialAccountState;
.super Ldrinkless/org/ton/TonApi$InitialAccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawInitialAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x1424a3b9


# instance fields
.field public code:[B

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 887
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InitialAccountState;-><init>()V

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
            "code",
            "data"
        }
    .end annotation

    .line 890
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InitialAccountState;-><init>()V

    .line 891
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawInitialAccountState;->code:[B

    .line 892
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$RawInitialAccountState;->data:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x1424a3b9

    return v0
.end method
