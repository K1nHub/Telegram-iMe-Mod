.class public final Lcom/iMe/feature/twitter/TwitterFragment$Companion;
.super Ljava/lang/Object;
.source "TwitterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/TwitterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(JLcom/iMe/feature/socialMedias/SocialNetwork;)Lcom/iMe/feature/twitter/TwitterFragment;
    .locals 1

    const-string v0, "socialNetwork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    new-instance v0, Lcom/iMe/feature/twitter/TwitterFragment;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/feature/twitter/TwitterFragment;-><init>(JLcom/iMe/feature/socialMedias/SocialNetwork;)V

    return-object v0
.end method
