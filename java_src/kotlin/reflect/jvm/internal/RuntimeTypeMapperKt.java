package kotlin.reflect.jvm.internal;

import java.lang.reflect.Method;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
/* compiled from: RuntimeTypeMapper.kt */
/* loaded from: classes4.dex */
public final class RuntimeTypeMapperKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String getSignature(Method method) {
        String joinToString$default;
        StringBuilder sb = new StringBuilder();
        sb.append(method.getName());
        Class<?>[] parameterTypes = method.getParameterTypes();
        Intrinsics.checkNotNullExpressionValue(parameterTypes, "parameterTypes");
        joinToString$default = ArraysKt___ArraysKt.joinToString$default(parameterTypes, "", "(", ")", 0, null, new Function1<Class<?>, CharSequence>() { // from class: kotlin.reflect.jvm.internal.RuntimeTypeMapperKt$signature$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(Class<?> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                return ReflectClassUtilKt.getDesc(it);
            }
        }, 24, null);
        sb.append(joinToString$default);
        Class<?> returnType = method.getReturnType();
        Intrinsics.checkNotNullExpressionValue(returnType, "returnType");
        sb.append(ReflectClassUtilKt.getDesc(returnType));
        return sb.toString();
    }
}
