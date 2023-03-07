.class public final Lcom/smedialink/storage/data/network/model/request/kikliko/ReportRequest;
.super Ljava/lang/Object;
.source "ReportRequest.kt"


# instance fields
.field private final reason:Ljava/lang/String;

.field private final uid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/request/kikliko/ReportRequest;->uid:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/smedialink/storage/data/network/model/request/kikliko/ReportRequest;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/kikliko/ReportRequest;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/kikliko/ReportRequest;->uid:Ljava/lang/String;

    return-object v0
.end method
