.class public final Lcom/iMe/storage/data/network/api/google/DynamicLinksApi;
.super Ljava/lang/Object;
.source "DynamicLinksApi.kt"


# instance fields
.field private final dynamicLinks:Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;


# direct methods
.method public constructor <init>(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;)V
    .locals 1

    const-string v0, "dynamicLinks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/network/api/google/DynamicLinksApi;->dynamicLinks:Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    return-void
.end method


# virtual methods
.method public final getLink(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
            ">;"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/data/network/api/google/DynamicLinksApi;->dynamicLinks:Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    .line 16
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getDynamicLink(Landroid/net/Uri;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    const-string v0, "dynamicLinks\n           \u2026namicLink(Uri.parse(url))"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;->getValue()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
