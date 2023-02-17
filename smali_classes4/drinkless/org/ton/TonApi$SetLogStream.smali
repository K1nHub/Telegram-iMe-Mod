.class public Ldrinkless/org/ton/TonApi$SetLogStream;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetLogStream"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5150086f


# instance fields
.field public logStream:Ldrinkless/org/ton/TonApi$LogStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6087
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$LogStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logStream"
        }
    .end annotation

    .line 6097
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6098
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$SetLogStream;->logStream:Ldrinkless/org/ton/TonApi$LogStream;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5150086f

    return v0
.end method
