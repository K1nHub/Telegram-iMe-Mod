package com.iMe.fork.p024ui.view;

import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
/* compiled from: KoinComponent.kt */
/* renamed from: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$special$$inlined$inject$default$2 */
/* loaded from: classes3.dex */
public final class ChatAttachAlertWalletLayout$special$$inlined$inject$default$2 extends Lambda implements Function0<WalletFlowCoordinator> {
    final /* synthetic */ Function0 $parameters;
    final /* synthetic */ Qualifier $qualifier;
    final /* synthetic */ KoinComponent $this_inject;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertWalletLayout$special$$inlined$inject$default$2(KoinComponent koinComponent, Qualifier qualifier, Function0 function0) {
        super(0);
        this.$this_inject = koinComponent;
        this.$qualifier = qualifier;
        this.$parameters = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final WalletFlowCoordinator invoke() {
        Scope rootScope;
        KoinComponent koinComponent = this.$this_inject;
        Qualifier qualifier = this.$qualifier;
        Function0<? extends ParametersHolder> function0 = this.$parameters;
        if (koinComponent instanceof KoinScopeComponent) {
            rootScope = ((KoinScopeComponent) koinComponent).getScope();
        } else {
            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
        }
        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletFlowCoordinator.class), qualifier, function0);
    }
}