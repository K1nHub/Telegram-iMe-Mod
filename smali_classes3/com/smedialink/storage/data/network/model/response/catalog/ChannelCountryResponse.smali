.class public final Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;
.super Ljava/lang/Object;
.source "ChannelCountryResponse.kt"


# instance fields
.field private final code:Ljava/lang/String;

.field private final id:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;->code:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;->id:I

    .line 6
    iput-object p3, p0, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;->id:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;->title:Ljava/lang/String;

    return-object v0
.end method
