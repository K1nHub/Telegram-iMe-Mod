.class public final Lcom/iMe/model/twitter/TwitterAccountStatus$None;
.super Lcom/iMe/model/twitter/TwitterAccountStatus;
.source "TwitterAccountStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/twitter/TwitterAccountStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "None"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/twitter/TwitterAccountStatus$None;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/twitter/TwitterAccountStatus$None;

    invoke-direct {v0}, Lcom/iMe/model/twitter/TwitterAccountStatus$None;-><init>()V

    sput-object v0, Lcom/iMe/model/twitter/TwitterAccountStatus$None;->INSTANCE:Lcom/iMe/model/twitter/TwitterAccountStatus$None;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/iMe/model/twitter/TwitterAccountStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
