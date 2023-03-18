package p034j$.util;

import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import p034j$.lang.AbstractC2484d;
import p034j$.util.Map;
import p034j$.util.concurrent.C2566a;
import p034j$.util.concurrent.InterfaceC2567b;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2947L;
import p034j$.wrappers.C2997q;
import p034j$.wrappers.C3001s;
/* renamed from: j$.util.DesugarCollections */
/* loaded from: classes2.dex */
public class DesugarCollections {

    /* renamed from: a */
    public static final Class f534a;

    /* renamed from: b */
    static final Class f535b;

    /* renamed from: c */
    private static final Field f536c;

    /* renamed from: d */
    private static final Field f537d;

    /* renamed from: e */
    private static final Constructor f538e;

    /* renamed from: f */
    private static final Constructor f539f;

    static {
        Field field;
        Field field2;
        Constructor<?> constructor;
        Class<?> cls = Collections.synchronizedCollection(new ArrayList()).getClass();
        f534a = cls;
        f535b = Collections.synchronizedList(new LinkedList()).getClass();
        Constructor<?> constructor2 = null;
        try {
            field = cls.getDeclaredField("mutex");
        } catch (NoSuchFieldException unused) {
            field = null;
        }
        f536c = field;
        if (field != null) {
            field.setAccessible(true);
        }
        try {
            field2 = cls.getDeclaredField("c");
        } catch (NoSuchFieldException unused2) {
            field2 = null;
        }
        f537d = field2;
        if (field2 != null) {
            field2.setAccessible(true);
        }
        try {
            constructor = Collections.synchronizedSet(new HashSet()).getClass().getDeclaredConstructor(Set.class, Object.class);
        } catch (NoSuchMethodException unused3) {
            constructor = null;
        }
        f539f = constructor;
        if (constructor != null) {
            constructor.setAccessible(true);
        }
        try {
            constructor2 = cls.getDeclaredConstructor(Collection.class, Object.class);
        } catch (NoSuchMethodException unused4) {
        }
        f538e = constructor2;
        if (constructor2 != null) {
            constructor2.setAccessible(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static boolean m645c(Collection collection, Predicate predicate) {
        boolean removeIf;
        Field field = f536c;
        if (field == null) {
            try {
                return Collection$EL.removeIf((Collection) f537d.get(collection), predicate);
            } catch (IllegalAccessException e) {
                throw new Error("Runtime illegal access in synchronized collection removeIf fall-back.", e);
            }
        }
        try {
            synchronized (field.get(collection)) {
                removeIf = Collection$EL.removeIf((Collection) f537d.get(collection), predicate);
            }
            return removeIf;
        } catch (IllegalAccessException e2) {
            throw new Error("Runtime illegal access in synchronized collection removeIf.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static void m644d(List list, Comparator comparator) {
        Field field = f536c;
        if (field == null) {
            try {
                AbstractC2538a.m605v((List) f537d.get(list), comparator);
                return;
            } catch (IllegalAccessException e) {
                throw new Error("Runtime illegal access in synchronized collection sort fall-back.", e);
            }
        }
        try {
            synchronized (field.get(list)) {
                AbstractC2538a.m605v((List) f537d.get(list), comparator);
            }
        } catch (IllegalAccessException e2) {
            throw new Error("Runtime illegal access in synchronized list sort.", e2);
        }
    }

    public static <K, V> Map<K, V> synchronizedMap(Map<K, V> map) {
        return new C2530a(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j$.util.DesugarCollections$a */
    /* loaded from: classes2.dex */
    public static class C2530a implements Map, Serializable, Map {

        /* renamed from: a */
        private final Map f540a;

        /* renamed from: b */
        final Object f541b;

        /* renamed from: c */
        private transient Set f542c;

        /* renamed from: d */
        private transient Set f543d;

        /* renamed from: e */
        private transient Collection f544e;

        C2530a(Map map) {
            Objects.requireNonNull(map);
            this.f540a = map;
            this.f541b = this;
        }

        /* renamed from: a */
        private Set m643a(Set set, Object obj) {
            if (DesugarCollections.f539f == null) {
                return Collections.synchronizedSet(set);
            }
            try {
                return (Set) DesugarCollections.f539f.newInstance(set, obj);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
                throw new Error("Unable to instantiate a synchronized list.", e);
            }
        }

        @Override // java.util.Map, p034j$.util.Map
        public void clear() {
            synchronized (this.f541b) {
                this.f540a.clear();
            }
        }

        @Override // p034j$.util.Map
        public Object compute(Object obj, BiFunction biFunction) {
            Object $default$compute;
            Object apply;
            synchronized (this.f541b) {
                try {
                    Map map = this.f540a;
                    if (map instanceof Map) {
                        $default$compute = ((Map) map).compute(obj, biFunction);
                    } else if (map instanceof ConcurrentMap) {
                        ConcurrentMap concurrentMap = (ConcurrentMap) map;
                        Objects.requireNonNull(biFunction);
                        loop0: while (true) {
                            Object obj2 = concurrentMap.get(obj);
                            while (true) {
                                apply = biFunction.apply(obj, obj2);
                                if (apply != null) {
                                    if (obj2 == null) {
                                        obj2 = concurrentMap.putIfAbsent(obj, apply);
                                        if (obj2 == null) {
                                            break loop0;
                                        }
                                    } else if (concurrentMap.replace(obj, obj2, apply)) {
                                        break;
                                    }
                                } else {
                                    apply = null;
                                    if (obj2 == null && !concurrentMap.containsKey(obj)) {
                                        break;
                                    }
                                    if (concurrentMap.remove(obj, obj2)) {
                                        break;
                                    }
                                }
                            }
                        }
                        $default$compute = apply;
                    } else {
                        $default$compute = Map.CC.$default$compute(map, obj, biFunction);
                    }
                } finally {
                }
            }
            return $default$compute;
        }

        @Override // java.util.Map
        public /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
            return compute(obj, C3001s.m117a(biFunction));
        }

        @Override // p034j$.util.Map
        public Object computeIfAbsent(Object obj, Function function) {
            Object computeIfAbsent;
            synchronized (this.f541b) {
                try {
                    java.util.Map map = this.f540a;
                    computeIfAbsent = map instanceof Map ? ((Map) map).computeIfAbsent(obj, function) : map instanceof ConcurrentMap ? AbstractC2484d.m693a((ConcurrentMap) map, obj, function) : Map.CC.$default$computeIfAbsent(map, obj, function);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return computeIfAbsent;
        }

        @Override // java.util.Map
        public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
            return computeIfAbsent(obj, C2947L.m204a(function));
        }

        @Override // p034j$.util.Map
        public Object computeIfPresent(Object obj, BiFunction biFunction) {
            java.util.Map map;
            Object $default$computeIfPresent;
            synchronized (this.f541b) {
                try {
                    map = this.f540a;
                } finally {
                }
                if (map instanceof Map) {
                    $default$computeIfPresent = ((Map) map).computeIfPresent(obj, biFunction);
                } else if (map instanceof ConcurrentMap) {
                    ConcurrentMap concurrentMap = (ConcurrentMap) map;
                    Objects.requireNonNull(biFunction);
                    while (true) {
                        Object obj2 = concurrentMap.get(obj);
                        if (obj2 == null) {
                            $default$computeIfPresent = obj2;
                            break;
                        }
                        Object apply = biFunction.apply(obj, obj2);
                        if (apply != null) {
                            if (concurrentMap.replace(obj, obj2, apply)) {
                                $default$computeIfPresent = apply;
                                break;
                            }
                        } else if (concurrentMap.remove(obj, obj2)) {
                            $default$computeIfPresent = null;
                            break;
                        }
                    }
                } else {
                    $default$computeIfPresent = Map.CC.$default$computeIfPresent(map, obj, biFunction);
                }
            }
            return $default$computeIfPresent;
        }

        @Override // java.util.Map
        public /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
            return computeIfPresent(obj, C3001s.m117a(biFunction));
        }

        @Override // java.util.Map, p034j$.util.Map
        public boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.f541b) {
                containsKey = this.f540a.containsKey(obj);
            }
            return containsKey;
        }

        @Override // java.util.Map, p034j$.util.Map
        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.f541b) {
                containsValue = this.f540a.containsValue(obj);
            }
            return containsValue;
        }

        @Override // java.util.Map, p034j$.util.Map
        public Set entrySet() {
            Set set;
            synchronized (this.f541b) {
                if (this.f543d == null) {
                    this.f543d = m643a(this.f540a.entrySet(), this.f541b);
                }
                set = this.f543d;
            }
            return set;
        }

        @Override // java.util.Map, p034j$.util.Map
        public boolean equals(Object obj) {
            boolean equals;
            if (this == obj) {
                return true;
            }
            synchronized (this.f541b) {
                equals = this.f540a.equals(obj);
            }
            return equals;
        }

        @Override // p034j$.util.Map
        public void forEach(BiConsumer biConsumer) {
            synchronized (this.f541b) {
                try {
                    java.util.Map map = this.f540a;
                    if (map instanceof Map) {
                        ((Map) map).forEach(biConsumer);
                    } else if (map instanceof ConcurrentMap) {
                        AbstractC2484d.m692b((ConcurrentMap) map, biConsumer);
                    } else {
                        Map.CC.$default$forEach(map, biConsumer);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.Map
        public /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
            forEach(C2997q.m122a(biConsumer));
        }

        @Override // java.util.Map, p034j$.util.Map
        public Object get(Object obj) {
            Object obj2;
            synchronized (this.f541b) {
                obj2 = this.f540a.get(obj);
            }
            return obj2;
        }

        @Override // java.util.Map, p034j$.util.Map
        public Object getOrDefault(Object obj, Object obj2) {
            Object orDefault;
            synchronized (this.f541b) {
                orDefault = Map.EL.getOrDefault(this.f540a, obj, obj2);
            }
            return orDefault;
        }

        @Override // java.util.Map, p034j$.util.Map
        public int hashCode() {
            int hashCode;
            synchronized (this.f541b) {
                hashCode = this.f540a.hashCode();
            }
            return hashCode;
        }

        @Override // java.util.Map, p034j$.util.Map
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f541b) {
                isEmpty = this.f540a.isEmpty();
            }
            return isEmpty;
        }

        @Override // java.util.Map, p034j$.util.Map
        public Set keySet() {
            Set set;
            synchronized (this.f541b) {
                if (this.f542c == null) {
                    this.f542c = m643a(this.f540a.keySet(), this.f541b);
                }
                set = this.f542c;
            }
            return set;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
            r3 = r7.apply(r2, r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
            if (r3 == null) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
            if (r1.replace(r5, r2, r3) == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
            r6 = r3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0036, code lost:
            if (r1.remove(r5, r2) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0038, code lost:
            r6 = null;
         */
        @Override // p034j$.util.Map
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object merge(java.lang.Object r5, java.lang.Object r6, p034j$.util.function.BiFunction r7) {
            /*
                r4 = this;
                java.lang.Object r0 = r4.f541b
                monitor-enter(r0)
                java.util.Map r1 = r4.f540a     // Catch: java.lang.Throwable -> L30
                boolean r2 = r1 instanceof p034j$.util.Map     // Catch: java.lang.Throwable -> L30
                if (r2 == 0) goto L10
                j$.util.Map r1 = (p034j$.util.Map) r1     // Catch: java.lang.Throwable -> L30
                java.lang.Object r5 = r1.merge(r5, r6, r7)     // Catch: java.lang.Throwable -> L30
                goto L46
            L10:
                boolean r2 = r1 instanceof java.util.concurrent.ConcurrentMap     // Catch: java.lang.Throwable -> L30
                if (r2 == 0) goto L42
                java.util.concurrent.ConcurrentMap r1 = (java.util.concurrent.ConcurrentMap) r1     // Catch: java.lang.Throwable -> L30
                java.util.Objects.requireNonNull(r7)     // Catch: java.lang.Throwable -> L30
                java.util.Objects.requireNonNull(r6)     // Catch: java.lang.Throwable -> L30
            L1c:
                java.lang.Object r2 = r1.get(r5)     // Catch: java.lang.Throwable -> L30
            L20:
                if (r2 == 0) goto L3a
                java.lang.Object r3 = r7.apply(r2, r6)     // Catch: java.lang.Throwable -> L30
                if (r3 == 0) goto L32
                boolean r2 = r1.replace(r5, r2, r3)     // Catch: java.lang.Throwable -> L30
                if (r2 == 0) goto L1c
                r6 = r3
                goto L40
            L30:
                r5 = move-exception
                goto L48
            L32:
                boolean r2 = r1.remove(r5, r2)     // Catch: java.lang.Throwable -> L30
                if (r2 == 0) goto L1c
                r6 = 0
                goto L40
            L3a:
                java.lang.Object r2 = r1.putIfAbsent(r5, r6)     // Catch: java.lang.Throwable -> L30
                if (r2 != 0) goto L20
            L40:
                r5 = r6
                goto L46
            L42:
                java.lang.Object r5 = p034j$.util.Map.CC.$default$merge(r1, r5, r6, r7)     // Catch: java.lang.Throwable -> L30
            L46:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
                return r5
            L48:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.DesugarCollections.C2530a.merge(java.lang.Object, java.lang.Object, j$.util.function.BiFunction):java.lang.Object");
        }

        @Override // java.util.Map
        public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
            return merge(obj, obj2, C3001s.m117a(biFunction));
        }

        @Override // java.util.Map, p034j$.util.Map
        public Object put(Object obj, Object obj2) {
            Object put;
            synchronized (this.f541b) {
                put = this.f540a.put(obj, obj2);
            }
            return put;
        }

        @Override // java.util.Map, p034j$.util.Map
        public void putAll(java.util.Map map) {
            synchronized (this.f541b) {
                this.f540a.putAll(map);
            }
        }

        @Override // java.util.Map, p034j$.util.Map
        public Object putIfAbsent(Object obj, Object obj2) {
            Object putIfAbsent;
            synchronized (this.f541b) {
                putIfAbsent = Map.EL.putIfAbsent(this.f540a, obj, obj2);
            }
            return putIfAbsent;
        }

        @Override // java.util.Map, p034j$.util.Map
        public Object remove(Object obj) {
            Object remove;
            synchronized (this.f541b) {
                remove = this.f540a.remove(obj);
            }
            return remove;
        }

        @Override // java.util.Map, p034j$.util.Map
        public boolean remove(Object obj, Object obj2) {
            boolean remove;
            synchronized (this.f541b) {
                try {
                    java.util.Map map = this.f540a;
                    remove = map instanceof Map ? ((Map) map).remove(obj, obj2) : Map.CC.$default$remove(map, obj, obj2);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return remove;
        }

        @Override // java.util.Map, p034j$.util.Map
        public Object replace(Object obj, Object obj2) {
            Object replace;
            synchronized (this.f541b) {
                try {
                    java.util.Map map = this.f540a;
                    replace = map instanceof Map ? ((Map) map).replace(obj, obj2) : map.get(obj);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return replace;
        }

        @Override // p034j$.util.Map
        public void replaceAll(BiFunction biFunction) {
            synchronized (this.f541b) {
                try {
                    java.util.Map map = this.f540a;
                    if (map instanceof Map) {
                        ((Map) map).replaceAll(biFunction);
                    } else if (map instanceof ConcurrentMap) {
                        ConcurrentMap concurrentMap = (ConcurrentMap) map;
                        Objects.requireNonNull(biFunction);
                        C2566a c2566a = new C2566a(concurrentMap, biFunction);
                        if (concurrentMap instanceof InterfaceC2567b) {
                            ((InterfaceC2567b) concurrentMap).forEach(c2566a);
                        } else {
                            AbstractC2484d.m692b(concurrentMap, c2566a);
                        }
                    } else {
                        Map.CC.$default$replaceAll(map, biFunction);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.Map
        public /* synthetic */ void replaceAll(java.util.function.BiFunction biFunction) {
            replaceAll(C3001s.m117a(biFunction));
        }

        @Override // java.util.Map, p034j$.util.Map
        public int size() {
            int size;
            synchronized (this.f541b) {
                size = this.f540a.size();
            }
            return size;
        }

        public String toString() {
            String obj;
            synchronized (this.f541b) {
                obj = this.f540a.toString();
            }
            return obj;
        }

        @Override // java.util.Map, p034j$.util.Map
        public Collection values() {
            Collection collection;
            Collection collection2;
            synchronized (this.f541b) {
                try {
                    if (this.f544e == null) {
                        Collection values = this.f540a.values();
                        Object obj = this.f541b;
                        if (DesugarCollections.f538e == null) {
                            collection2 = Collections.synchronizedCollection(values);
                        } else {
                            try {
                                collection2 = (Collection) DesugarCollections.f538e.newInstance(values, obj);
                            } catch (IllegalAccessException e) {
                                e = e;
                                throw new Error("Unable to instantiate a synchronized list.", e);
                            } catch (InstantiationException e2) {
                                e = e2;
                                throw new Error("Unable to instantiate a synchronized list.", e);
                            } catch (InvocationTargetException e3) {
                                e = e3;
                                throw new Error("Unable to instantiate a synchronized list.", e);
                            }
                        }
                        this.f544e = collection2;
                    }
                    collection = this.f544e;
                } finally {
                }
            }
            return collection;
        }

        @Override // java.util.Map, p034j$.util.Map
        public boolean replace(Object obj, Object obj2, Object obj3) {
            boolean replace;
            synchronized (this.f541b) {
                try {
                    java.util.Map map = this.f540a;
                    replace = map instanceof Map ? ((Map) map).replace(obj, obj2, obj3) : Map.CC.$default$replace(map, obj, obj2, obj3);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return replace;
        }
    }
}
