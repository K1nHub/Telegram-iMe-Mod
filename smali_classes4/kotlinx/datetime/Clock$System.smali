.class public final Lkotlinx/datetime/Clock$System;
.super Ljava/lang/Object;
.source "Clock.kt"


# static fields
.field public static final INSTANCE:Lkotlinx/datetime/Clock$System;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/datetime/Clock$System;

    invoke-direct {v0}, Lkotlinx/datetime/Clock$System;-><init>()V

    sput-object v0, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()Lkotlinx/datetime/Instant;
    .locals 1

    .line 25
    sget-object v0, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    invoke-virtual {v0}, Lkotlinx/datetime/Instant$Companion;->now()Lkotlinx/datetime/Instant;

    move-result-object v0

    return-object v0
.end method
