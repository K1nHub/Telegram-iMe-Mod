package org.koin.core.scope;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
import org.koin.core.qualifier.Qualifier;
import org.koin.ext.KClassExtKt;
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
final class Scope$resolveValue$3$1 extends Lambda implements Function0<String> {
    final /* synthetic */ KClass<?> $clazz;
    final /* synthetic */ Qualifier $qualifier;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Scope$resolveValue$3$1(KClass<?> kClass, Qualifier qualifier) {
        super(0);
        this.$clazz = kClass;
        this.$qualifier = qualifier;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        return "- lookup? t:'" + KClassExtKt.getFullName(this.$clazz) + "' - q:'" + this.$qualifier + "' look in other scopes";
    }
}
