.class public Ldrinkless/org/ton/TonApi$AdnlAddress;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdnlAddress"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x431950c


# instance fields
.field public adnlAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 500
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
            "adnlAddress"
        }
    .end annotation

    .line 503
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 504
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$AdnlAddress;->adnlAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x431950c

    return v0
.end method
