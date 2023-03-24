.class public final Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Ready;
.super Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType;
.source "CreateWalletScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ready"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Ready;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Ready;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Ready;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Ready;->INSTANCE:Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Ready;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
