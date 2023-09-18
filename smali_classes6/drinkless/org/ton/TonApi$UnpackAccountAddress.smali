.class public Ldrinkless/org/ton/TonApi$UnpackAccountAddress;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnpackAccountAddress"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x28ad7fb7


# instance fields
.field public accountAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6459
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountAddress"
        }
    .end annotation

    .line 6462
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6463
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$UnpackAccountAddress;->accountAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x28ad7fb7

    return v0
.end method
