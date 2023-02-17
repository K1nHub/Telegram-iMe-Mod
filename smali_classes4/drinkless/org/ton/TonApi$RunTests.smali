.class public Ldrinkless/org/ton/TonApi$RunTests;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunTests"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x7996cab3


# instance fields
.field public dir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6050
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
            "dir"
        }
    .end annotation

    .line 6053
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6054
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RunTests;->dir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x7996cab3

    return v0
.end method
