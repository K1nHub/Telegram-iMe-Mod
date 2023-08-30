package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavArgs;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
/* compiled from: NavArgsLazy.kt */
/* loaded from: classes.dex */
public final class NavArgsLazy<Args extends NavArgs> implements Lazy<Args> {
    private final Function0<Bundle> argumentProducer;
    private Args cached;
    private final KClass<Args> navArgsClass;

    public NavArgsLazy(KClass<Args> navArgsClass, Function0<Bundle> argumentProducer) {
        Intrinsics.checkNotNullParameter(navArgsClass, "navArgsClass");
        Intrinsics.checkNotNullParameter(argumentProducer, "argumentProducer");
        this.navArgsClass = navArgsClass;
        this.argumentProducer = argumentProducer;
    }

    @Override // kotlin.Lazy
    public Args getValue() {
        Args args = this.cached;
        if (args == null) {
            Bundle invoke = this.argumentProducer.invoke();
            Method method = NavArgsLazyKt.getMethodMap().get(this.navArgsClass);
            if (method == null) {
                Class javaClass = JvmClassMappingKt.getJavaClass(this.navArgsClass);
                Class<Bundle>[] methodSignature = NavArgsLazyKt.getMethodSignature();
                method = javaClass.getMethod("fromBundle", (Class[]) Arrays.copyOf(methodSignature, methodSignature.length));
                NavArgsLazyKt.getMethodMap().put(this.navArgsClass, method);
                Intrinsics.checkNotNullExpressionValue(method, "navArgsClass.java.getMet…hod\n                    }");
            }
            Object invoke2 = method.invoke(null, invoke);
            Objects.requireNonNull(invoke2, "null cannot be cast to non-null type Args of androidx.navigation.NavArgsLazy");
            Args args2 = (Args) invoke2;
            this.cached = args2;
            return args2;
        }
        return args;
    }

    @Override // kotlin.Lazy
    public boolean isInitialized() {
        return this.cached != null;
    }
}
