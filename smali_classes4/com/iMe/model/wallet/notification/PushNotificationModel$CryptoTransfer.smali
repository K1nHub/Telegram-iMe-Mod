.class public abstract Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer;
.super Lcom/iMe/model/wallet/notification/PushNotificationModel;
.source "PushNotificationModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/notification/PushNotificationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CryptoTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;,
        Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;
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

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/iMe/model/wallet/notification/PushNotificationModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer;->userId:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer;->userId:Ljava/lang/String;

    return-object v0
.end method
