.class public Ldrinkless/org/ton/TonApi$QueryInfo;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryInfo"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x5689dc70


# instance fields
.field public body:[B

.field public bodyHash:[B

.field public id:J

.field public initState:[B

.field public validUntil:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3054
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "validUntil",
            "bodyHash",
            "body",
            "initState"
        }
    .end annotation

    .line 3057
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3058
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$QueryInfo;->id:J

    .line 3059
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$QueryInfo;->validUntil:J

    .line 3060
    iput-object p5, p0, Ldrinkless/org/ton/TonApi$QueryInfo;->bodyHash:[B

    .line 3061
    iput-object p6, p0, Ldrinkless/org/ton/TonApi$QueryInfo;->body:[B

    .line 3062
    iput-object p7, p0, Ldrinkless/org/ton/TonApi$QueryInfo;->initState:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x5689dc70

    return v0
.end method
