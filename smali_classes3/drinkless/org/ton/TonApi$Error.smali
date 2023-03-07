.class public Ldrinkless/org/ton/TonApi$Error;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x642270e6


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 657
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 660
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 661
    iput p1, p0, Ldrinkless/org/ton/TonApi$Error;->code:I

    .line 662
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$Error;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x642270e6

    return v0
.end method
