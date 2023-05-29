.class public final Lcom/iMe/feature/socialMedias/SocialDialog$Companion;
.super Ljava/lang/Object;
.source "SocialDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/socialMedias/SocialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/SocialDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/iMe/feature/socialMedias/SocialDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/iMe/feature/socialMedias/SocialDialog;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allNonActiveNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAddButtonClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialDialog;

    invoke-direct {v0, p1}, Lcom/iMe/feature/socialMedias/SocialDialog;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, p2, p3}, Lcom/iMe/feature/socialMedias/SocialDialog;->updateData(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
