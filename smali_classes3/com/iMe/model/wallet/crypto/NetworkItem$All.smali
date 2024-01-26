.class public final Lcom/iMe/model/wallet/crypto/NetworkItem$All;
.super Lcom/iMe/model/wallet/crypto/NetworkItem;
.source "NetworkItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/NetworkItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "All"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/NetworkItem$All;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/NetworkItem$All;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/NetworkItem$All;->INSTANCE:Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/NetworkItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
