.class final Lorg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AdnlAddressList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/api/adnl/AdnlAddressList$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddressList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/ton/tl/TlReader;",
        "Lorg/ton/api/adnl/AdnlAddress;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdnlAddressList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlAddressList.kt\norg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1\n+ 2 TlReader.kt\norg/ton/tl/TlReaderKt\n*L\n1#1,49:1\n65#2:50\n*S KotlinDebug\n*F\n+ 1 AdnlAddressList.kt\norg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1\n*L\n39#1:50\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1;

    invoke-direct {v0}, Lorg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1;-><init>()V

    sput-object v0, Lorg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lorg/ton/tl/TlReader;

    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1;->invoke(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddress;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddress;
    .locals 1

    const-string v0, "$this$readVector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/ton/api/adnl/AdnlAddress;->Companion:Lorg/ton/api/adnl/AdnlAddress$Companion;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/adnl/AdnlAddress;

    return-object p1
.end method
