.class public Ldrinkless/org/ton/TonApi$TvmNumberDecimal;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvmNumberDecimal"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x45e296b3


# instance fields
.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3655
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 3658
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3659
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$TvmNumberDecimal;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x45e296b3

    return v0
.end method
