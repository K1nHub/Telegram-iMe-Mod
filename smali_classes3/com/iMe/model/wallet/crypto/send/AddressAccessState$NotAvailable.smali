.class public final Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;
.super Lcom/iMe/model/wallet/crypto/send/AddressAccessState;
.source "AddressAccessState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/send/AddressAccessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotAvailable"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;->INSTANCE:Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/send/AddressAccessState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
