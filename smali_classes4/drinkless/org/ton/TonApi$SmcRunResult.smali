.class public Ldrinkless/org/ton/TonApi$SmcRunResult;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcRunResult"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x5444f3f3


# instance fields
.field public exitCode:I

.field public gasUsed:J

.field public stack:[Ldrinkless/org/ton/TonApi$TvmStackEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3525
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J[Ldrinkless/org/ton/TonApi$TvmStackEntry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gasUsed",
            "stack",
            "exitCode"
        }
    .end annotation

    .line 3528
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3529
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$SmcRunResult;->gasUsed:J

    .line 3530
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$SmcRunResult;->stack:[Ldrinkless/org/ton/TonApi$TvmStackEntry;

    .line 3531
    iput p4, p0, Ldrinkless/org/ton/TonApi$SmcRunResult;->exitCode:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x5444f3f3

    return v0
.end method
