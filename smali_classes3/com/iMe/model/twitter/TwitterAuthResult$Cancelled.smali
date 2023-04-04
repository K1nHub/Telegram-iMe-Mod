.class public final Lcom/iMe/model/twitter/TwitterAuthResult$Cancelled;
.super Lcom/iMe/model/twitter/TwitterAuthResult;
.source "TwitterAuthResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/twitter/TwitterAuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancelled"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/twitter/TwitterAuthResult$Cancelled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/twitter/TwitterAuthResult$Cancelled;

    invoke-direct {v0}, Lcom/iMe/model/twitter/TwitterAuthResult$Cancelled;-><init>()V

    sput-object v0, Lcom/iMe/model/twitter/TwitterAuthResult$Cancelled;->INSTANCE:Lcom/iMe/model/twitter/TwitterAuthResult$Cancelled;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/iMe/model/twitter/TwitterAuthResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
