.class public final synthetic Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ReactedHeaderView;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ReactedHeaderView;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/ReactedHeaderView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    iput-object p4, p0, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/ReactedHeaderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Runnable;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactedHeaderView;->$r8$lambda$eAwF3MfT-GO_YQO3ZHbcjWNBBLI(Lorg/telegram/ui/Components/ReactedHeaderView;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
