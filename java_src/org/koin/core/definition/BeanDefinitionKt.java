package org.koin.core.definition;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.qualifier.Qualifier;
import org.koin.ext.KClassExtKt;
/* compiled from: BeanDefinition.kt */
/* loaded from: classes4.dex */
public final class BeanDefinitionKt {
    public static final String indexKey(KClass<?> clazz, Qualifier qualifier, Qualifier scopeQualifier) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        String str = (qualifier == null || (str = qualifier.getValue()) == null) ? "" : "";
        return KClassExtKt.getFullName(clazz) + ':' + str + ':' + scopeQualifier;
    }
}
