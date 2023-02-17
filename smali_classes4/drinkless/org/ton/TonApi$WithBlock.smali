.class public Ldrinkless/org/ton/TonApi$WithBlock;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithBlock"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x2f089d5b


# instance fields
.field public function:Ldrinkless/org/ton/TonApi$Function;

.field public id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6494
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;Ldrinkless/org/ton/TonApi$Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "function"
        }
    .end annotation

    .line 6497
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6498
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$WithBlock;->id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 6499
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$WithBlock;->function:Ldrinkless/org/ton/TonApi$Function;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x2f089d5b

    return v0
.end method
