.class public Ldrinkless/org/ton/TonApi$GetConfigParam;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetConfigParam"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x217f48a


# instance fields
.field public id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public mode:I

.field public param:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4776
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(ILdrinkless/org/ton/TonApi$TonBlockIdExt;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "id",
            "param"
        }
    .end annotation

    .line 4779
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4780
    iput p1, p0, Ldrinkless/org/ton/TonApi$GetConfigParam;->mode:I

    .line 4781
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$GetConfigParam;->id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 4782
    iput p3, p0, Ldrinkless/org/ton/TonApi$GetConfigParam;->param:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x217f48a

    return v0
.end method
