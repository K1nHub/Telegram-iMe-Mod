.class public Ldrinkless/org/ton/TonApi$BlocksLookupBlock;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksLookupBlock"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x548c5bb3


# instance fields
.field public id:Ldrinkless/org/ton/TonApi$TonBlockId;

.field public lt:J

.field public mode:I

.field public utime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4171
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(ILdrinkless/org/ton/TonApi$TonBlockId;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "id",
            "lt",
            "utime"
        }
    .end annotation

    .line 4174
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4175
    iput p1, p0, Ldrinkless/org/ton/TonApi$BlocksLookupBlock;->mode:I

    .line 4176
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$BlocksLookupBlock;->id:Ldrinkless/org/ton/TonApi$TonBlockId;

    .line 4177
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$BlocksLookupBlock;->lt:J

    .line 4178
    iput p5, p0, Ldrinkless/org/ton/TonApi$BlocksLookupBlock;->utime:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x548c5bb3

    return v0
.end method
