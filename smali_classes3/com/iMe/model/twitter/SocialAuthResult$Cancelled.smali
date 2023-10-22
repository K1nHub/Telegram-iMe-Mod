.class public final Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;
.super Lcom/iMe/model/twitter/SocialAuthResult;
.source "SocialAuthResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/twitter/SocialAuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancelled"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;

    invoke-direct {v0}, Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;-><init>()V

    sput-object v0, Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;->INSTANCE:Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/iMe/model/twitter/SocialAuthResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
