.class public abstract Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation;
.super Lcom/smedialink/model/wallet/notification/PushNotificationModel;
.source "PushNotificationModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/notification/PushNotificationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Donation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$In;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;
    }
.end annotation


# instance fields
.field private final transient type:Ljava/lang/String;

.field private final transient userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation;->userId:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation;->userId:Ljava/lang/String;

    return-object v0
.end method
