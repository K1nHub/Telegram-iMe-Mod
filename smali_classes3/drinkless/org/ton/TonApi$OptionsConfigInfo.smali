.class public Ldrinkless/org/ton/TonApi$OptionsConfigInfo;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsConfigInfo"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x7b75f16


# instance fields
.field public defaultRwalletInitPublicKey:Ljava/lang/String;

.field public defaultWalletId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2680
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultWalletId",
            "defaultRwalletInitPublicKey"
        }
    .end annotation

    .line 2683
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2684
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$OptionsConfigInfo;->defaultWalletId:J

    .line 2685
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$OptionsConfigInfo;->defaultRwalletInitPublicKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x7b75f16

    return v0
.end method
