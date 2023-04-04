.class public Ldrinkless/org/ton/TonApi$BlocksGetBlockHeader;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksGetBlockHeader"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x72262342


# instance fields
.field public id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3959
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 3962
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 3963
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksGetBlockHeader;->id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x72262342

    return v0
.end method
