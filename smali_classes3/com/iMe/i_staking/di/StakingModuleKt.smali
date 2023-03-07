.class public final Lcom/iMe/i_staking/di/StakingModuleKt;
.super Ljava/lang/Object;
.source "StakingModule.kt"


# static fields
.field private static final STAKING_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

.field private static final STAKING_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

.field private static stakingModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "STAKING_RETROFIT"

    .line 15
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/iMe/i_staking/di/StakingModuleKt;->STAKING_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "STAKING_CLIENT"

    .line 16
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/iMe/i_staking/di/StakingModuleKt;->STAKING_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

    .line 18
    sget-object v0, Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1;->INSTANCE:Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/iMe/i_staking/di/StakingModuleKt;->stakingModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getSTAKING_CLIENT()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 16
    sget-object v0, Lcom/iMe/i_staking/di/StakingModuleKt;->STAKING_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getSTAKING_RETROFIT()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 15
    sget-object v0, Lcom/iMe/i_staking/di/StakingModuleKt;->STAKING_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getStakingModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 18
    sget-object v0, Lcom/iMe/i_staking/di/StakingModuleKt;->stakingModule:Lorg/koin/core/module/Module;

    return-object v0
.end method
