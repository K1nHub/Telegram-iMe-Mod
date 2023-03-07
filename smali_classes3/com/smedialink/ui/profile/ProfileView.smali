.class public interface abstract Lcom/smedialink/ui/profile/ProfileView;
.super Ljava/lang/Object;
.source "ProfileView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onFilteredMembers(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showUserAccountLevel(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
.end method
