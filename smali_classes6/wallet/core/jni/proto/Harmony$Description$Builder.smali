.class public final Lwallet/core/jni/proto/Harmony$Description$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DescriptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$Description;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$Description;",
        "Lwallet/core/jni/proto/Harmony$Description$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DescriptionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3640
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->access$6600()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 3633
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$Description$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDetails()Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1

    .line 3873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Description;->access$8000(Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public clearIdentity()Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1

    .line 3726
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3727
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Description;->access$7100(Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public clearName()Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1

    .line 3677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Description;->access$6800(Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public clearSecurityContact()Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1

    .line 3824
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Description;->access$7700(Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public clearWebsite()Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1

    .line 3775
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3776
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Description;->access$7400(Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 3846
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getDetails()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getDetailsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 3699
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3708
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getIdentityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 3650
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityContact()Ljava/lang/String;
    .locals 1

    .line 3797
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getSecurityContact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityContactBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getSecurityContactBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .line 3748
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getWebsite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebsiteBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3757
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getWebsiteBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDetails(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3864
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$7900(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDetailsBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3884
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$8100(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIdentity(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3717
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3718
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$7000(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdentityBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3737
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$7200(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3668
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3669
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$6700(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3688
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3689
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$6900(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSecurityContact(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3815
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$7600(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSecurityContactBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3835
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$7800(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWebsite(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3766
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3767
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$7300(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWebsiteBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3786
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Description;->access$7500(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
