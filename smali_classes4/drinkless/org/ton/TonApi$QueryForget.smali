.class public Ldrinkless/org/ton/TonApi$QueryForget;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryForget"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x483d6da1


# instance fields
.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5688
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 5691
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5692
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$QueryForget;->id:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x483d6da1

    return v0
.end method
