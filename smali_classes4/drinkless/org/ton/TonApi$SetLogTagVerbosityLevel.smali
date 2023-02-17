.class public Ldrinkless/org/ton/TonApi$SetLogTagVerbosityLevel;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetLogTagVerbosityLevel"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x7ce8296a


# instance fields
.field public newVerbosityLevel:I

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6135
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "newVerbosityLevel"
        }
    .end annotation

    .line 6146
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6147
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$SetLogTagVerbosityLevel;->tag:Ljava/lang/String;

    .line 6148
    iput p2, p0, Ldrinkless/org/ton/TonApi$SetLogTagVerbosityLevel;->newVerbosityLevel:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x7ce8296a

    return v0
.end method
