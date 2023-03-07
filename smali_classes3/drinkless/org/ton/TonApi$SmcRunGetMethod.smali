.class public Ldrinkless/org/ton/TonApi$SmcRunGetMethod;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcRunGetMethod"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0xf36fa56


# instance fields
.field public id:J

.field public method:Ldrinkless/org/ton/TonApi$SmcMethodId;

.field public stack:[Ldrinkless/org/ton/TonApi$TvmStackEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6394
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(JLdrinkless/org/ton/TonApi$SmcMethodId;[Ldrinkless/org/ton/TonApi$TvmStackEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "method",
            "stack"
        }
    .end annotation

    .line 6397
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6398
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$SmcRunGetMethod;->id:J

    .line 6399
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$SmcRunGetMethod;->method:Ldrinkless/org/ton/TonApi$SmcMethodId;

    .line 6400
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$SmcRunGetMethod;->stack:[Ldrinkless/org/ton/TonApi$TvmStackEntry;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0xf36fa56

    return v0
.end method
