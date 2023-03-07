package com.smedialink.p031ui.wallet.transaction.details;

import com.smedialink.p031ui.wallet.transaction.details.adapter.WalletActionAdapter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
/* compiled from: KoinComponent.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$1 */
/* loaded from: classes3.dex */
public final class C2197x11ec8ec8 extends Lambda implements Function0<WalletActionAdapter> {
    final /* synthetic */ Function0 $parameters;
    final /* synthetic */ Qualifier $qualifier;
    final /* synthetic */ KoinComponent $this_inject;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2197x11ec8ec8(KoinComponent koinComponent, Qualifier qualifier, Function0 function0) {
        super(0);
        this.$this_inject = koinComponent;
        this.$qualifier = qualifier;
        this.$parameters = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.smedialink.ui.wallet.transaction.details.adapter.WalletActionAdapter] */
    @Override // kotlin.jvm.functions.Function0
    public final WalletActionAdapter invoke() {
        Scope rootScope;
        KoinComponent koinComponent = this.$this_inject;
        Qualifier qualifier = this.$qualifier;
        Function0<? extends ParametersHolder> function0 = this.$parameters;
        if (koinComponent instanceof KoinScopeComponent) {
            rootScope = ((KoinScopeComponent) koinComponent).getScope();
        } else {
            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
        }
        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletActionAdapter.class), qualifier, function0);
    }
}
