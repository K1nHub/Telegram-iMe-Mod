.class public final Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;
.super Ljava/lang/Object;
.source "AndroidActivityHolder.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/model/ObjectHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/domain/model/ObjectHolder<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getValue()Landroid/app/Activity;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;->getValue()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
