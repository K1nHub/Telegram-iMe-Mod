package kotlin.collections;

import java.util.Collections;
import java.util.Set;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SetsJVM.kt */
/* loaded from: classes4.dex */
public class SetsKt__SetsJVMKt {
    public static <T> Set<T> setOf(T t) {
        Set<T> singleton = Collections.singleton(t);
        Intrinsics.checkNotNullExpressionValue(singleton, "singleton(element)");
        return singleton;
    }

    public static <E> Set<E> createSetBuilder() {
        return new SetBuilder();
    }

    public static <E> Set<E> build(Set<E> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((SetBuilder) builder).build();
    }
}
