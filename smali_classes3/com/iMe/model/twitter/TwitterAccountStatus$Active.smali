.class public final Lcom/iMe/model/twitter/TwitterAccountStatus$Active;
.super Lcom/iMe/model/twitter/TwitterAccountStatus;
.source "TwitterAccountStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/twitter/TwitterAccountStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Active"
.end annotation


# instance fields
.field private final nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nickname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/iMe/model/twitter/TwitterAccountStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;->nickname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNickname()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;->nickname:Ljava/lang/String;

    return-object v0
.end method
