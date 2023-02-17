.class public final synthetic Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FilterCreateActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/FilterCreateActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/FilterCreateActivity;

    check-cast p1, Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    check-cast p2, Lcom/smedialink/storage/data/repository/topics/Topic;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity;->$r8$lambda$86NEcbP8v0Z5DBmpZiXYcorQ9GU(Lorg/telegram/ui/FilterCreateActivity;Lcom/smedialink/storage/domain/model/filters/FilterIcon;Lcom/smedialink/storage/data/repository/topics/Topic;)V

    return-void
.end method
