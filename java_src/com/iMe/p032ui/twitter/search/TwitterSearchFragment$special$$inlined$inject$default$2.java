package com.iMe.p032ui.twitter.search;

import com.iMe.p032ui.twitter.search.adapter.TwitterUsersRecycleAdapter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
/* compiled from: KoinComponent.kt */
/* renamed from: com.iMe.ui.twitter.search.TwitterSearchFragment$special$$inlined$inject$default$2 */
/* loaded from: classes3.dex */
public final class TwitterSearchFragment$special$$inlined$inject$default$2 extends Lambda implements Function0<TwitterUsersRecycleAdapter> {
    final /* synthetic */ Function0 $parameters;
    final /* synthetic */ Qualifier $qualifier;
    final /* synthetic */ KoinComponent $this_inject;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterSearchFragment$special$$inlined$inject$default$2(KoinComponent koinComponent, Qualifier qualifier, Function0 function0) {
        super(0);
        this.$this_inject = koinComponent;
        this.$qualifier = qualifier;
        this.$parameters = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.twitter.search.adapter.TwitterUsersRecycleAdapter, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final TwitterUsersRecycleAdapter invoke() {
        Scope rootScope;
        KoinComponent koinComponent = this.$this_inject;
        Qualifier qualifier = this.$qualifier;
        Function0<? extends ParametersHolder> function0 = this.$parameters;
        if (koinComponent instanceof KoinScopeComponent) {
            rootScope = ((KoinScopeComponent) koinComponent).getScope();
        } else {
            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
        }
        return rootScope.get(Reflection.getOrCreateKotlinClass(TwitterUsersRecycleAdapter.class), qualifier, function0);
    }
}
