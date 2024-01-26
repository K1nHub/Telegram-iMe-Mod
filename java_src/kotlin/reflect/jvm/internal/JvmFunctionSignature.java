package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
/* compiled from: RuntimeTypeMapper.kt */
/* loaded from: classes4.dex */
public abstract class JvmFunctionSignature {
    public /* synthetic */ JvmFunctionSignature(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String asString();

    private JvmFunctionSignature() {
    }

    /* compiled from: RuntimeTypeMapper.kt */
    /* loaded from: classes4.dex */
    public static final class KotlinFunction extends JvmFunctionSignature {
        private final String _signature;
        private final JvmMemberSignature.Method signature;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KotlinFunction(JvmMemberSignature.Method signature) {
            super(null);
            Intrinsics.checkNotNullParameter(signature, "signature");
            this.signature = signature;
            this._signature = signature.asString();
        }

        public final String getMethodName() {
            return this.signature.getName();
        }

        public final String getMethodDesc() {
            return this.signature.getDesc();
        }

        @Override // kotlin.reflect.jvm.internal.JvmFunctionSignature
        public String asString() {
            return this._signature;
        }
    }

    /* compiled from: RuntimeTypeMapper.kt */
    /* loaded from: classes4.dex */
    public static final class KotlinConstructor extends JvmFunctionSignature {
        private final String _signature;
        private final JvmMemberSignature.Method signature;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KotlinConstructor(JvmMemberSignature.Method signature) {
            super(null);
            Intrinsics.checkNotNullParameter(signature, "signature");
            this.signature = signature;
            this._signature = signature.asString();
        }

        public final String getConstructorDesc() {
            return this.signature.getDesc();
        }

        @Override // kotlin.reflect.jvm.internal.JvmFunctionSignature
        public String asString() {
            return this._signature;
        }
    }

    /* compiled from: RuntimeTypeMapper.kt */
    /* loaded from: classes4.dex */
    public static final class JavaMethod extends JvmFunctionSignature {
        private final Method method;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public JavaMethod(Method method) {
            super(null);
            Intrinsics.checkNotNullParameter(method, "method");
            this.method = method;
        }

        public final Method getMethod() {
            return this.method;
        }

        @Override // kotlin.reflect.jvm.internal.JvmFunctionSignature
        public String asString() {
            String signature;
            signature = RuntimeTypeMapperKt.getSignature(this.method);
            return signature;
        }
    }

    /* compiled from: RuntimeTypeMapper.kt */
    /* loaded from: classes4.dex */
    public static final class JavaConstructor extends JvmFunctionSignature {
        private final Constructor<?> constructor;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public JavaConstructor(Constructor<?> constructor) {
            super(null);
            Intrinsics.checkNotNullParameter(constructor, "constructor");
            this.constructor = constructor;
        }

        public final Constructor<?> getConstructor() {
            return this.constructor;
        }

        @Override // kotlin.reflect.jvm.internal.JvmFunctionSignature
        public String asString() {
            String joinToString$default;
            Class<?>[] parameterTypes = this.constructor.getParameterTypes();
            Intrinsics.checkNotNullExpressionValue(parameterTypes, "constructor.parameterTypes");
            joinToString$default = ArraysKt___ArraysKt.joinToString$default(parameterTypes, "", "<init>(", ")V", 0, null, new Function1<Class<?>, CharSequence>() { // from class: kotlin.reflect.jvm.internal.JvmFunctionSignature$JavaConstructor$asString$1
                @Override // kotlin.jvm.functions.Function1
                public final CharSequence invoke(Class<?> it) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    return ReflectClassUtilKt.getDesc(it);
                }
            }, 24, null);
            return joinToString$default;
        }
    }

    /* compiled from: RuntimeTypeMapper.kt */
    /* loaded from: classes4.dex */
    public static final class FakeJavaAnnotationConstructor extends JvmFunctionSignature {
        private final Class<?> jClass;
        private final List<Method> methods;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FakeJavaAnnotationConstructor(Class<?> jClass) {
            super(null);
            List<Method> sortedWith;
            Intrinsics.checkNotNullParameter(jClass, "jClass");
            this.jClass = jClass;
            Method[] declaredMethods = jClass.getDeclaredMethods();
            Intrinsics.checkNotNullExpressionValue(declaredMethods, "jClass.declaredMethods");
            sortedWith = ArraysKt___ArraysKt.sortedWith(declaredMethods, new Comparator() { // from class: kotlin.reflect.jvm.internal.JvmFunctionSignature$FakeJavaAnnotationConstructor$special$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(((Method) t).getName(), ((Method) t2).getName());
                    return compareValues;
                }
            });
            this.methods = sortedWith;
        }

        public final List<Method> getMethods() {
            return this.methods;
        }

        @Override // kotlin.reflect.jvm.internal.JvmFunctionSignature
        public String asString() {
            String joinToString$default;
            joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(this.methods, "", "<init>(", ")V", 0, null, new Function1<Method, CharSequence>() { // from class: kotlin.reflect.jvm.internal.JvmFunctionSignature$FakeJavaAnnotationConstructor$asString$1
                @Override // kotlin.jvm.functions.Function1
                public final CharSequence invoke(Method method) {
                    Class<?> returnType = method.getReturnType();
                    Intrinsics.checkNotNullExpressionValue(returnType, "it.returnType");
                    return ReflectClassUtilKt.getDesc(returnType);
                }
            }, 24, null);
            return joinToString$default;
        }
    }
}
