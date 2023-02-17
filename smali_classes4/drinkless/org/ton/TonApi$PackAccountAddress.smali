.class public Ldrinkless/org/ton/TonApi$PackAccountAddress;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackAccountAddress"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x52c3c614


# instance fields
.field public accountAddress:Ldrinkless/org/ton/TonApi$UnpackedAccountAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5478
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$UnpackedAccountAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountAddress"
        }
    .end annotation

    .line 5481
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5482
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$PackAccountAddress;->accountAddress:Ldrinkless/org/ton/TonApi$UnpackedAccountAddress;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x52c3c614

    return v0
.end method
