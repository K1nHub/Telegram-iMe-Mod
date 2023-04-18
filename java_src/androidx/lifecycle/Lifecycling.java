package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: Lifecycling.kt */
/* loaded from: classes.dex */
public final class Lifecycling {
    public static final Lifecycling INSTANCE = new Lifecycling();
    private static final Map<Class<?>, Integer> callbackCache = new HashMap();
    private static final Map<Class<?>, List<Constructor<? extends GeneratedAdapter>>> classToAdapters = new HashMap();

    private Lifecycling() {
    }

    public static final LifecycleEventObserver lifecycleEventObserver(Object object) {
        Intrinsics.checkNotNullParameter(object, "object");
        boolean z = object instanceof LifecycleEventObserver;
        boolean z2 = object instanceof DefaultLifecycleObserver;
        if (z && z2) {
            return new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) object, (LifecycleEventObserver) object);
        }
        if (z2) {
            return new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) object, null);
        }
        if (z) {
            return (LifecycleEventObserver) object;
        }
        Class<?> cls = object.getClass();
        Lifecycling lifecycling = INSTANCE;
        if (lifecycling.getObserverConstructorType(cls) == 2) {
            List<Constructor<? extends GeneratedAdapter>> list = classToAdapters.get(cls);
            Intrinsics.checkNotNull(list);
            List<Constructor<? extends GeneratedAdapter>> list2 = list;
            if (list2.size() == 1) {
                return new SingleGeneratedAdapterObserver(lifecycling.createGeneratedAdapter(list2.get(0), object));
            }
            int size = list2.size();
            GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[size];
            for (int i = 0; i < size; i++) {
                generatedAdapterArr[i] = INSTANCE.createGeneratedAdapter(list2.get(i), object);
            }
            return new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
        }
        return new ReflectiveGenericLifecycleObserver(object);
    }

    private final GeneratedAdapter createGeneratedAdapter(Constructor<? extends GeneratedAdapter> constructor, Object obj) {
        try {
            GeneratedAdapter newInstance = constructor.newInstance(obj);
            Intrinsics.checkNotNullExpressionValue(newInstance, "{\n            constructo…tance(`object`)\n        }");
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    private final Constructor<? extends GeneratedAdapter> generatedConstructor(Class<?> cls) {
        try {
            Package r0 = cls.getPackage();
            String name = cls.getCanonicalName();
            String fullPackage = r0 != null ? r0.getName() : "";
            Intrinsics.checkNotNullExpressionValue(fullPackage, "fullPackage");
            if (!(fullPackage.length() == 0)) {
                Intrinsics.checkNotNullExpressionValue(name, "name");
                name = name.substring(fullPackage.length() + 1);
                Intrinsics.checkNotNullExpressionValue(name, "this as java.lang.String).substring(startIndex)");
            }
            Intrinsics.checkNotNullExpressionValue(name, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
            String adapterName = getAdapterName(name);
            if (!(fullPackage.length() == 0)) {
                adapterName = fullPackage + '.' + adapterName;
            }
            Class<?> cls2 = Class.forName(adapterName);
            Intrinsics.checkNotNull(cls2, "null cannot be cast to non-null type java.lang.Class<out androidx.lifecycle.GeneratedAdapter>");
            Constructor declaredConstructor = cls2.getDeclaredConstructor(cls);
            if (declaredConstructor.isAccessible()) {
                return declaredConstructor;
            }
            declaredConstructor.setAccessible(true);
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    private final int getObserverConstructorType(Class<?> cls) {
        Map<Class<?>, Integer> map = callbackCache;
        Integer num = map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int resolveObserverCallbackType = resolveObserverCallbackType(cls);
        map.put(cls, Integer.valueOf(resolveObserverCallbackType));
        return resolveObserverCallbackType;
    }

    private final int resolveObserverCallbackType(Class<?> cls) {
        List<Constructor<? extends GeneratedAdapter>> listOf;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends GeneratedAdapter> generatedConstructor = generatedConstructor(cls);
        if (generatedConstructor != null) {
            Map<Class<?>, List<Constructor<? extends GeneratedAdapter>>> map = classToAdapters;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(generatedConstructor);
            map.put(cls, listOf);
            return 2;
        } else if (ClassesInfoCache.sInstance.hasLifecycleMethods(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (isLifecycleParent(superclass)) {
                Intrinsics.checkNotNullExpressionValue(superclass, "superclass");
                if (getObserverConstructorType(superclass) == 1) {
                    return 1;
                }
                List<Constructor<? extends GeneratedAdapter>> list = classToAdapters.get(superclass);
                Intrinsics.checkNotNull(list);
                arrayList = new ArrayList(list);
            }
            Class<?>[] interfaces = cls.getInterfaces();
            Intrinsics.checkNotNullExpressionValue(interfaces, "klass.interfaces");
            for (Class<?> intrface : interfaces) {
                if (isLifecycleParent(intrface)) {
                    Intrinsics.checkNotNullExpressionValue(intrface, "intrface");
                    if (getObserverConstructorType(intrface) == 1) {
                        return 1;
                    }
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    List<Constructor<? extends GeneratedAdapter>> list2 = classToAdapters.get(intrface);
                    Intrinsics.checkNotNull(list2);
                    arrayList.addAll(list2);
                }
            }
            if (arrayList != null) {
                classToAdapters.put(cls, arrayList);
                return 2;
            }
            return 1;
        }
    }

    private final boolean isLifecycleParent(Class<?> cls) {
        return cls != null && LifecycleObserver.class.isAssignableFrom(cls);
    }

    public static final String getAdapterName(String className) {
        String replace$default;
        Intrinsics.checkNotNullParameter(className, "className");
        StringBuilder sb = new StringBuilder();
        replace$default = StringsKt__StringsJVMKt.replace$default(className, ".", "_", false, 4, (Object) null);
        sb.append(replace$default);
        sb.append("_LifecycleAdapter");
        return sb.toString();
    }
}
