.class final Lcom/trustwallet/walletconnect/WCClient$onWalletChangeNetwork$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WCClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trustwallet/walletconnect/WCClient;-><init>(Lcom/google/gson/GsonBuilder;Lokhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onWalletChangeNetwork$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/trustwallet/walletconnect/WCClient$onWalletChangeNetwork$1;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/WCClient$onWalletChangeNetwork$1;-><init>()V

    sput-object v0, Lcom/trustwallet/walletconnect/WCClient$onWalletChangeNetwork$1;->INSTANCE:Lcom/trustwallet/walletconnect/WCClient$onWalletChangeNetwork$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 82
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/trustwallet/walletconnect/WCClient$onWalletChangeNetwork$1;->invoke(JI)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(JI)V
    .locals 0

    return-void
.end method
