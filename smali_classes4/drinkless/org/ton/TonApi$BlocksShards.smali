.class public Ldrinkless/org/ton/TonApi$BlocksShards;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksShards"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x7b59a94a


# instance fields
.field public shards:[Ldrinkless/org/ton/TonApi$TonBlockIdExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1887
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$TonBlockIdExt;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shards"
        }
    .end annotation

    .line 1890
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1891
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksShards;->shards:[Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x7b59a94a

    return v0
.end method
