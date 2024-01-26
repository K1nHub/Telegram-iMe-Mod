.class public final synthetic Lorg/telegram/messenger/ApplicationLoaderImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ApplicationLoaderImpl;->$r8$lambda$7t7IHyfMIiyYHy1KBSuW06O1b38(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method
