.class public final synthetic Lorg/telegram/messenger/DispatchQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/DispatchQueue$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/DispatchQueue;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v0, p1}, Lorg/telegram/messenger/DispatchQueue;->$r8$lambda$bRKQ5b5tx0aDGsnknY5JEofaSxw(Lorg/telegram/messenger/DispatchQueue;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
