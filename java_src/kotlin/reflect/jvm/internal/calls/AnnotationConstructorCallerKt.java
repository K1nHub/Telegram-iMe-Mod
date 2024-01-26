package kotlin.reflect.jvm.internal.calls;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
/* compiled from: AnnotationConstructorCaller.kt */
/* loaded from: classes4.dex */
public final class AnnotationConstructorCallerKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Object transformKotlinToJvm(Object obj, Class<?> cls) {
        if (obj instanceof Class) {
            return null;
        }
        if (obj instanceof KClass) {
            obj = JvmClassMappingKt.getJavaClass((KClass) obj);
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Class[]) {
                return null;
            }
            if (objArr instanceof KClass[]) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>");
                KClass[] kClassArr = (KClass[]) obj;
                ArrayList arrayList = new ArrayList(kClassArr.length);
                for (KClass kClass : kClassArr) {
                    arrayList.add(JvmClassMappingKt.getJavaClass(kClass));
                }
                obj = arrayList.toArray(new Class[0]);
            } else {
                obj = objArr;
            }
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void throwIllegalArgumentType(int i, String str, Class<?> cls) {
        KClass orCreateKotlinClass;
        String qualifiedName;
        if (Intrinsics.areEqual(cls, Class.class)) {
            orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KClass.class);
        } else {
            orCreateKotlinClass = (cls.isArray() && Intrinsics.areEqual(cls.getComponentType(), Class.class)) ? Reflection.getOrCreateKotlinClass(KClass[].class) : JvmClassMappingKt.getKotlinClass(cls);
        }
        if (Intrinsics.areEqual(orCreateKotlinClass.getQualifiedName(), Reflection.getOrCreateKotlinClass(Object[].class).getQualifiedName())) {
            StringBuilder sb = new StringBuilder();
            sb.append(orCreateKotlinClass.getQualifiedName());
            sb.append('<');
            Class<?> componentType = JvmClassMappingKt.getJavaClass(orCreateKotlinClass).getComponentType();
            Intrinsics.checkNotNullExpressionValue(componentType, "kotlinClass.java.componentType");
            sb.append(JvmClassMappingKt.getKotlinClass(componentType).getQualifiedName());
            sb.append('>');
            qualifiedName = sb.toString();
        } else {
            qualifiedName = orCreateKotlinClass.getQualifiedName();
        }
        throw new IllegalArgumentException("Argument #" + i + ' ' + str + " is not of the required type " + qualifiedName);
    }

    public static /* synthetic */ Object createAnnotationInstance$default(Class cls, Map map, List list, int i, Object obj) {
        int collectionSizeOrDefault;
        if ((i & 4) != 0) {
            Set<String> keySet = map.keySet();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(keySet, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (String str : keySet) {
                arrayList.add(cls.getDeclaredMethod(str, new Class[0]));
            }
            list = arrayList;
        }
        return createAnnotationInstance(cls, map, list);
    }

    private static final <T> boolean createAnnotationInstance$equals(Class<T> cls, List<Method> list, Map<String, ? extends Object> map, Object obj) {
        boolean areEqual;
        boolean z;
        KClass annotationClass;
        Class cls2 = null;
        Annotation annotation = obj instanceof Annotation ? (Annotation) obj : null;
        if (annotation != null && (annotationClass = JvmClassMappingKt.getAnnotationClass(annotation)) != null) {
            cls2 = JvmClassMappingKt.getJavaClass(annotationClass);
        }
        if (Intrinsics.areEqual(cls2, cls)) {
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (Method method : list) {
                    Object obj2 = map.get(method.getName());
                    Object invoke = method.invoke(obj, new Object[0]);
                    if (obj2 instanceof boolean[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.BooleanArray");
                        areEqual = Arrays.equals((boolean[]) obj2, (boolean[]) invoke);
                        continue;
                    } else if (obj2 instanceof char[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.CharArray");
                        areEqual = Arrays.equals((char[]) obj2, (char[]) invoke);
                        continue;
                    } else if (obj2 instanceof byte[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.ByteArray");
                        areEqual = Arrays.equals((byte[]) obj2, (byte[]) invoke);
                        continue;
                    } else if (obj2 instanceof short[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.ShortArray");
                        areEqual = Arrays.equals((short[]) obj2, (short[]) invoke);
                        continue;
                    } else if (obj2 instanceof int[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.IntArray");
                        areEqual = Arrays.equals((int[]) obj2, (int[]) invoke);
                        continue;
                    } else if (obj2 instanceof float[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.FloatArray");
                        areEqual = Arrays.equals((float[]) obj2, (float[]) invoke);
                        continue;
                    } else if (obj2 instanceof long[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.LongArray");
                        areEqual = Arrays.equals((long[]) obj2, (long[]) invoke);
                        continue;
                    } else if (obj2 instanceof double[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.DoubleArray");
                        areEqual = Arrays.equals((double[]) obj2, (double[]) invoke);
                        continue;
                    } else if (obj2 instanceof Object[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Array<*>");
                        areEqual = Arrays.equals((Object[]) obj2, (Object[]) invoke);
                        continue;
                    } else {
                        areEqual = Intrinsics.areEqual(obj2, invoke);
                        continue;
                    }
                    if (!areEqual) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            if (z) {
                return true;
            }
        }
        return false;
    }

    public static final <T> T createAnnotationInstance(final Class<T> annotationClass, final Map<String, ? extends Object> values, final List<Method> methods) {
        final Lazy lazy;
        final Lazy lazy2;
        Intrinsics.checkNotNullParameter(annotationClass, "annotationClass");
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(methods, "methods");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                int hashCode;
                Iterator<T> it = values.entrySet().iterator();
                int i = 0;
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof boolean[]) {
                        hashCode = Arrays.hashCode((boolean[]) value);
                    } else if (value instanceof char[]) {
                        hashCode = Arrays.hashCode((char[]) value);
                    } else if (value instanceof byte[]) {
                        hashCode = Arrays.hashCode((byte[]) value);
                    } else if (value instanceof short[]) {
                        hashCode = Arrays.hashCode((short[]) value);
                    } else if (value instanceof int[]) {
                        hashCode = Arrays.hashCode((int[]) value);
                    } else if (value instanceof float[]) {
                        hashCode = Arrays.hashCode((float[]) value);
                    } else if (value instanceof long[]) {
                        hashCode = Arrays.hashCode((long[]) value);
                    } else if (value instanceof double[]) {
                        hashCode = Arrays.hashCode((double[]) value);
                    } else {
                        hashCode = value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode();
                    }
                    i += hashCode ^ (str.hashCode() * 127);
                }
                return Integer.valueOf(i);
            }
        });
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$createAnnotationInstance$toString$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Class<T> cls = annotationClass;
                Map<String, Object> map = values;
                StringBuilder sb = new StringBuilder();
                sb.append('@');
                sb.append(cls.getCanonicalName());
                CollectionsKt___CollectionsKt.joinTo$default(map.entrySet(), sb, ", ", "(", ")", 0, null, new Function1<Map.Entry<? extends String, ? extends Object>, CharSequence>() { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$createAnnotationInstance$toString$2$1$1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ CharSequence invoke(Map.Entry<? extends String, ? extends Object> entry) {
                        return invoke2((Map.Entry<String, ? extends Object>) entry);
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final CharSequence invoke2(Map.Entry<String, ? extends Object> entry) {
                        String obj;
                        Intrinsics.checkNotNullParameter(entry, "entry");
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof boolean[]) {
                            obj = Arrays.toString((boolean[]) value);
                            Intrinsics.checkNotNullExpressionValue(obj, "toString(this)");
                        } else if (value instanceof char[]) {
                            obj = Arrays.toString((char[]) value);
                            Intrinsics.checkNotNullExpressionValue(obj, "toString(this)");
                        } else if (value instanceof byte[]) {
                            obj = Arrays.toString((byte[]) value);
                            Intrinsics.checkNotNullExpressionValue(obj, "toString(this)");
                        } else if (value instanceof short[]) {
                            obj = Arrays.toString((short[]) value);
                            Intrinsics.checkNotNullExpressionValue(obj, "toString(this)");
                        } else if (value instanceof int[]) {
                            obj = Arrays.toString((int[]) value);
                            Intrinsics.checkNotNullExpressionValue(obj, "toString(this)");
                        } else if (value instanceof float[]) {
                            obj = Arrays.toString((float[]) value);
                            Intrinsics.checkNotNullExpressionValue(obj, "toString(this)");
                        } else if (value instanceof long[]) {
                            obj = Arrays.toString((long[]) value);
                            Intrinsics.checkNotNullExpressionValue(obj, "toString(this)");
                        } else if (value instanceof double[]) {
                            obj = Arrays.toString((double[]) value);
                            Intrinsics.checkNotNullExpressionValue(obj, "toString(this)");
                        } else if (value instanceof Object[]) {
                            obj = Arrays.toString((Object[]) value);
                            Intrinsics.checkNotNullExpressionValue(obj, "toString(this)");
                        } else {
                            obj = value.toString();
                        }
                        return key + '=' + obj;
                    }
                }, 48, null);
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            }
        });
        T t = (T) Proxy.newProxyInstance(annotationClass.getClassLoader(), new Class[]{annotationClass}, new InvocationHandler(annotationClass, values, lazy2, lazy, methods) { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$$Lambda$0
            private final Class arg$0;
            private final Map arg$1;
            private final Lazy arg$2;
            private final Lazy arg$3;
            private final List arg$4;

            {
                this.arg$0 = annotationClass;
                this.arg$1 = values;
                this.arg$2 = lazy2;
                this.arg$3 = lazy;
                this.arg$4 = methods;
            }

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                Object createAnnotationInstance$lambda$4;
                createAnnotationInstance$lambda$4 = AnnotationConstructorCallerKt.createAnnotationInstance$lambda$4(this.arg$0, this.arg$1, this.arg$2, this.arg$3, this.arg$4, obj, method, objArr);
                return createAnnotationInstance$lambda$4;
            }
        });
        Intrinsics.checkNotNull(t, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt.createAnnotationInstance");
        return t;
    }

    private static final int createAnnotationInstance$lambda$2(Lazy<Integer> lazy) {
        return lazy.getValue().intValue();
    }

    private static final String createAnnotationInstance$lambda$3(Lazy<String> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object createAnnotationInstance$lambda$4(Class annotationClass, Map values, Lazy toString$delegate, Lazy hashCode$delegate, List methods, Object obj, Method method, Object[] args) {
        List list;
        Intrinsics.checkNotNullParameter(annotationClass, "$annotationClass");
        Intrinsics.checkNotNullParameter(values, "$values");
        Intrinsics.checkNotNullParameter(toString$delegate, "$toString$delegate");
        Intrinsics.checkNotNullParameter(hashCode$delegate, "$hashCode$delegate");
        Intrinsics.checkNotNullParameter(methods, "$methods");
        String name = method.getName();
        if (name != null) {
            int hashCode = name.hashCode();
            if (hashCode != -1776922004) {
                if (hashCode != 147696667) {
                    if (hashCode == 1444986633 && name.equals("annotationType")) {
                        return annotationClass;
                    }
                } else if (name.equals("hashCode")) {
                    return Integer.valueOf(createAnnotationInstance$lambda$2(hashCode$delegate));
                }
            } else if (name.equals("toString")) {
                return createAnnotationInstance$lambda$3(toString$delegate);
            }
        }
        if (Intrinsics.areEqual(name, "equals")) {
            boolean z = true;
            if (args == null || args.length != 1) {
                z = false;
            }
            if (z) {
                Intrinsics.checkNotNullExpressionValue(args, "args");
                return Boolean.valueOf(createAnnotationInstance$equals(annotationClass, methods, values, ArraysKt.single(args)));
            }
        }
        if (values.containsKey(name)) {
            return values.get(name);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Method is not supported: ");
        sb.append(method);
        sb.append(" (args: ");
        if (args == null) {
            args = new Object[0];
        }
        list = ArraysKt___ArraysKt.toList(args);
        sb.append(list);
        sb.append(')');
        throw new KotlinReflectionInternalError(sb.toString());
    }
}
