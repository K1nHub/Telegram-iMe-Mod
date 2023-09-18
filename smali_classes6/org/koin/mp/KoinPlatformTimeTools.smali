.class public final Lorg/koin/mp/KoinPlatformTimeTools;
.super Ljava/lang/Object;
.source "KoinPlatformTimeTools.kt"


# static fields
.field public static final INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-direct {v0}, Lorg/koin/mp/KoinPlatformTimeTools;-><init>()V

    sput-object v0, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTimeInNanoSeconds()J
    .locals 2

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
