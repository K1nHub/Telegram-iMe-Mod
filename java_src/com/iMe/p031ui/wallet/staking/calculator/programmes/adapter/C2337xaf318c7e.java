package com.iMe.p031ui.wallet.staking.calculator.programmes.adapter;

import com.iMe.p031ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
/* compiled from: KoinComponent.kt */
/* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$presenter$2$invoke$$inlined$inject$default$1 */
/* loaded from: classes4.dex */
public final class C2337xaf318c7e extends Lambda implements Function0<StakingCalculatorProgrammesPresenter> {
    final /* synthetic */ Function0 $parameters;
    final /* synthetic */ Qualifier $qualifier;
    final /* synthetic */ KoinComponent $this_inject;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2337xaf318c7e(KoinComponent koinComponent, Qualifier qualifier, Function0 function0) {
        super(0);
        this.$this_inject = koinComponent;
        this.$qualifier = qualifier;
        this.$parameters = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter] */
    @Override // kotlin.jvm.functions.Function0
    public final StakingCalculatorProgrammesPresenter invoke() {
        Scope rootScope;
        KoinComponent koinComponent = this.$this_inject;
        Qualifier qualifier = this.$qualifier;
        Function0<? extends ParametersHolder> function0 = this.$parameters;
        if (koinComponent instanceof KoinScopeComponent) {
            rootScope = ((KoinScopeComponent) koinComponent).getScope();
        } else {
            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
        }
        return rootScope.get(Reflection.getOrCreateKotlinClass(StakingCalculatorProgrammesPresenter.class), qualifier, function0);
    }
}
