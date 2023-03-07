package org.koin.core.definition;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
import org.koin.ext.KClassExtKt;
/* compiled from: BeanDefinition.kt */
/* loaded from: classes4.dex */
final class BeanDefinition$toString$defOtherTypes$typesAsString$1 extends Lambda implements Function1<KClass<?>, CharSequence> {
    public static final BeanDefinition$toString$defOtherTypes$typesAsString$1 INSTANCE = new BeanDefinition$toString$defOtherTypes$typesAsString$1();

    BeanDefinition$toString$defOtherTypes$typesAsString$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final CharSequence invoke(KClass<?> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return KClassExtKt.getFullName(it);
    }
}
