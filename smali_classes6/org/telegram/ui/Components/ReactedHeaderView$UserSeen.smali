.class public Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;
.super Ljava/lang/Object;
.source "ReactedHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactedHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserSeen"
.end annotation


# instance fields
.field public date:I

.field public user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;I)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->date:I

    .line 106
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 107
    iput p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->date:I

    return-void
.end method
