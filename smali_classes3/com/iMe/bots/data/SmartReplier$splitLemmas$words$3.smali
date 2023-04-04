.class final Lcom/iMe/bots/data/SmartReplier$splitLemmas$words$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SmartReplier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/data/SmartReplier;->splitLemmas(Lcom/iMe/bots/domain/model/BotLanguage;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/bots/data/SmartReplier$splitLemmas$words$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/bots/data/SmartReplier$splitLemmas$words$3;

    invoke-direct {v0}, Lcom/iMe/bots/data/SmartReplier$splitLemmas$words$3;-><init>()V

    sput-object v0, Lcom/iMe/bots/data/SmartReplier$splitLemmas$words$3;->INSTANCE:Lcom/iMe/bots/data/SmartReplier$splitLemmas$words$3;

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

    .line 128
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/bots/data/SmartReplier$splitLemmas$words$3;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
