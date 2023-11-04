package p033j$.util;

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
import p033j$.lang.AbstractC2673d;
import p033j$.util.Collection;
import p033j$.util.List;
import p033j$.util.Map;
import p033j$.util.concurrent.C2808a;
import p033j$.util.concurrent.InterfaceC2809b;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.Predicate;
import p033j$.util.function.UnaryOperator;
import p033j$.wrappers.C$r8$wrapper$java$util$function$BiFunction$VWRP;
import p033j$.wrappers.C$r8$wrapper$java$util$function$Function$VWRP;
import p033j$.wrappers.C3232q;
/* renamed from: j$.util.DesugarCollections */
/* loaded from: classes2.dex */
public class DesugarCollections {

    /* renamed from: a */
    public static final Class f676a;

    /* renamed from: b */
    static final Class f677b;

    /* renamed from: c */
    private static final Field f678c;

    /* renamed from: d */
    private static final Field f679d;

    /* renamed from: e */
    private static final Constructor f680e;

    /* renamed from: f */
    private static final Constructor f681f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j$.util.DesugarCollections$a */
    /* loaded from: classes2.dex */
    public static class C2771a implements Map, Serializable, Map {

        /* renamed from: a */
        private final Map f682a;

        /* renamed from: b */
        final Object f683b;

        /* renamed from: c */
        private transient Set f684c;

        /* renamed from: d */
        private transient Set f685d;

        /* renamed from: e */
        private transient Collection f686e;

        C2771a(Map map) {
            Objects.requireNonNull(map);
            this.f682a = map;
            this.f683b = this;
        }

        /* renamed from: a */
        private Set m686a(Set set, Object obj) {
            if (DesugarCollections.f681f == null) {
                return Collections.synchronizedSet(set);
            }
            try {
                return (Set) DesugarCollections.f681f.newInstance(set, obj);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
                throw new Error("Unable to instantiate a synchronized list.", e);
            }
        }

        @Override // java.util.Map, p033j$.util.Map
        public void clear() {
            synchronized (this.f683b) {
                this.f682a.clear();
            }
        }

        @Override // p033j$.util.Map
        public Object compute(Object obj, BiFunction biFunction) {
            Object $default$compute;
            Object apply;
            synchronized (this.f683b) {
                try {
                    Map map = this.f682a;
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
            return compute(obj, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
        }

        @Override // p033j$.util.Map
        public Object computeIfAbsent(Object obj, Function function) {
            Object computeIfAbsent;
            synchronized (this.f683b) {
                try {
                    java.util.Map map = this.f682a;
                    computeIfAbsent = map instanceof Map ? ((Map) map).computeIfAbsent(obj, function) : map instanceof ConcurrentMap ? AbstractC2673d.m992a((ConcurrentMap) map, obj, function) : Map.CC.$default$computeIfAbsent(map, obj, function);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return computeIfAbsent;
        }

        @Override // java.util.Map
        public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
            return computeIfAbsent(obj, C$r8$wrapper$java$util$function$Function$VWRP.convert(function));
        }

        @Override // p033j$.util.Map
        public Object computeIfPresent(Object obj, BiFunction biFunction) {
            java.util.Map map;
            Object $default$computeIfPresent;
            synchronized (this.f683b) {
                try {
                    map = this.f682a;
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
            return computeIfPresent(obj, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
        }

        @Override // java.util.Map, p033j$.util.Map
        public boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.f683b) {
                containsKey = this.f682a.containsKey(obj);
            }
            return containsKey;
        }

        @Override // java.util.Map, p033j$.util.Map
        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.f683b) {
                containsValue = this.f682a.containsValue(obj);
            }
            return containsValue;
        }

        @Override // java.util.Map, p033j$.util.Map
        public Set entrySet() {
            Set set;
            synchronized (this.f683b) {
                if (this.f685d == null) {
                    this.f685d = m686a(this.f682a.entrySet(), this.f683b);
                }
                set = this.f685d;
            }
            return set;
        }

        @Override // java.util.Map, p033j$.util.Map
        public boolean equals(Object obj) {
            boolean equals;
            if (this == obj) {
                return true;
            }
            synchronized (this.f683b) {
                equals = this.f682a.equals(obj);
            }
            return equals;
        }

        @Override // p033j$.util.Map
        public void forEach(BiConsumer biConsumer) {
            synchronized (this.f683b) {
                Map.EL.forEach(this.f682a, biConsumer);
            }
        }

        @Override // java.util.Map
        public void forEach(java.util.function.BiConsumer biConsumer) {
            BiConsumer m175a = C3232q.m175a(biConsumer);
            synchronized (this.f683b) {
                Map.EL.forEach(this.f682a, m175a);
            }
        }

        @Override // java.util.Map, p033j$.util.Map
        public Object get(Object obj) {
            Object obj2;
            synchronized (this.f683b) {
                obj2 = this.f682a.get(obj);
            }
            return obj2;
        }

        @Override // java.util.Map, p033j$.util.Map
        public Object getOrDefault(Object obj, Object obj2) {
            Object orDefault;
            synchronized (this.f683b) {
                orDefault = Map.EL.getOrDefault(this.f682a, obj, obj2);
            }
            return orDefault;
        }

        @Override // java.util.Map, p033j$.util.Map
        public int hashCode() {
            int hashCode;
            synchronized (this.f683b) {
                hashCode = this.f682a.hashCode();
            }
            return hashCode;
        }

        @Override // java.util.Map, p033j$.util.Map
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f683b) {
                isEmpty = this.f682a.isEmpty();
            }
            return isEmpty;
        }

        @Override // java.util.Map, p033j$.util.Map
        public Set keySet() {
            Set set;
            synchronized (this.f683b) {
                if (this.f684c == null) {
                    this.f684c = m686a(this.f682a.keySet(), this.f683b);
                }
                set = this.f684c;
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
        @Override // p033j$.util.Map
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object merge(java.lang.Object r5, java.lang.Object r6, p033j$.util.function.BiFunction r7) {
            /*
                r4 = this;
                java.lang.Object r0 = r4.f683b
                monitor-enter(r0)
                java.util.Map r1 = r4.f682a     // Catch: java.lang.Throwable -> L30
                boolean r2 = r1 instanceof p033j$.util.Map     // Catch: java.lang.Throwable -> L30
                if (r2 == 0) goto L10
                j$.util.Map r1 = (p033j$.util.Map) r1     // Catch: java.lang.Throwable -> L30
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
                java.lang.Object r5 = p033j$.util.Map.CC.$default$merge(r1, r5, r6, r7)     // Catch: java.lang.Throwable -> L30
            L46:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
                return r5
            L48:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: p033j$.util.DesugarCollections.C2771a.merge(java.lang.Object, java.lang.Object, j$.util.function.BiFunction):java.lang.Object");
        }

        @Override // java.util.Map
        public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
            return merge(obj, obj2, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
        }

        @Override // java.util.Map, p033j$.util.Map
        public Object put(Object obj, Object obj2) {
            Object put;
            synchronized (this.f683b) {
                put = this.f682a.put(obj, obj2);
            }
            return put;
        }

        @Override // java.util.Map, p033j$.util.Map
        public void putAll(java.util.Map map) {
            synchronized (this.f683b) {
                this.f682a.putAll(map);
            }
        }

        @Override // java.util.Map, p033j$.util.Map
        public Object putIfAbsent(Object obj, Object obj2) {
            Object putIfAbsent;
            synchronized (this.f683b) {
                putIfAbsent = Map.EL.putIfAbsent(this.f682a, obj, obj2);
            }
            return putIfAbsent;
        }

        @Override // java.util.Map, p033j$.util.Map
        public Object remove(Object obj) {
            Object remove;
            synchronized (this.f683b) {
                remove = this.f682a.remove(obj);
            }
            return remove;
        }

        @Override // java.util.Map, p033j$.util.Map
        public boolean remove(Object obj, Object obj2) {
            boolean remove;
            synchronized (this.f683b) {
                try {
                    java.util.Map map = this.f682a;
                    remove = map instanceof Map ? ((Map) map).remove(obj, obj2) : Map.CC.$default$remove(map, obj, obj2);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return remove;
        }

        @Override // java.util.Map, p033j$.util.Map
        public Object replace(Object obj, Object obj2) {
            Object replace;
            synchronized (this.f683b) {
                replace = Map.EL.replace(this.f682a, obj, obj2);
            }
            return replace;
        }

        @Override // java.util.Map, p033j$.util.Map
        public boolean replace(Object obj, Object obj2, Object obj3) {
            boolean replace;
            synchronized (this.f683b) {
                try {
                    java.util.Map map = this.f682a;
                    replace = map instanceof Map ? ((Map) map).replace(obj, obj2, obj3) : Map.CC.$default$replace(map, obj, obj2, obj3);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return replace;
        }

        @Override // p033j$.util.Map
        public void replaceAll(BiFunction biFunction) {
            synchronized (this.f683b) {
                try {
                    java.util.Map map = this.f682a;
                    if (map instanceof Map) {
                        ((Map) map).replaceAll(biFunction);
                    } else if (map instanceof ConcurrentMap) {
                        ConcurrentMap concurrentMap = (ConcurrentMap) map;
                        Objects.requireNonNull(biFunction);
                        C2808a c2808a = new C2808a(concurrentMap, biFunction);
                        if (concurrentMap instanceof InterfaceC2809b) {
                            ((InterfaceC2809b) concurrentMap).forEach(c2808a);
                        } else {
                            AbstractC2673d.m991b(concurrentMap, c2808a);
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
            replaceAll(C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
        }

        @Override // java.util.Map, p033j$.util.Map
        public int size() {
            int size;
            synchronized (this.f683b) {
                size = this.f682a.size();
            }
            return size;
        }

        public String toString() {
            String obj;
            synchronized (this.f683b) {
                obj = this.f682a.toString();
            }
            return obj;
        }

        @Override // java.util.Map, p033j$.util.Map
        public Collection values() {
            Collection collection;
            Collection collection2;
            synchronized (this.f683b) {
                try {
                    if (this.f686e == null) {
                        Collection values = this.f682a.values();
                        Object obj = this.f683b;
                        if (DesugarCollections.f680e == null) {
                            collection2 = Collections.synchronizedCollection(values);
                        } else {
                            try {
                                collection2 = (Collection) DesugarCollections.f680e.newInstance(values, obj);
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
                        this.f686e = collection2;
                    }
                    collection = this.f686e;
                } finally {
                }
            }
            return collection;
        }
    }

    static {
        Field field;
        Field field2;
        Constructor<?> constructor;
        Class<?> cls = Collections.synchronizedCollection(new ArrayList()).getClass();
        f676a = cls;
        f677b = Collections.synchronizedList(new LinkedList()).getClass();
        Constructor<?> constructor2 = null;
        try {
            field = cls.getDeclaredField("mutex");
        } catch (NoSuchFieldException unused) {
            field = null;
        }
        f678c = field;
        if (field != null) {
            field.setAccessible(true);
        }
        try {
            field2 = cls.getDeclaredField("c");
        } catch (NoSuchFieldException unused2) {
            field2 = null;
        }
        f679d = field2;
        if (field2 != null) {
            field2.setAccessible(true);
        }
        try {
            constructor = Collections.synchronizedSet(new HashSet()).getClass().getDeclaredConstructor(Set.class, Object.class);
        } catch (NoSuchMethodException unused3) {
            constructor = null;
        }
        f681f = constructor;
        if (constructor != null) {
            constructor.setAccessible(true);
        }
        try {
            constructor2 = cls.getDeclaredConstructor(Collection.class, Object.class);
        } catch (NoSuchMethodException unused4) {
        }
        f680e = constructor2;
        if (constructor2 != null) {
            constructor2.setAccessible(true);
        }
    }

    /* renamed from: c */
    public static void m690c(Iterable iterable, Consumer consumer) {
        Field field = f678c;
        if (field == null) {
            try {
                Collection.EL.m696a((java.util.Collection) f679d.get(iterable), consumer);
                return;
            } catch (IllegalAccessException e) {
                throw new Error("Runtime illegal access in synchronized collection forEach fall-back.", e);
            }
        }
        try {
            synchronized (field.get(iterable)) {
                Collection.EL.m696a((java.util.Collection) f679d.get(iterable), consumer);
            }
        } catch (IllegalAccessException e2) {
            throw new Error("Runtime illegal access in synchronized collection forEach.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static boolean m689d(java.util.Collection collection, Predicate predicate) {
        boolean removeIf;
        Field field = f678c;
        if (field == null) {
            try {
                return Collection.EL.removeIf((java.util.Collection) f679d.get(collection), predicate);
            } catch (IllegalAccessException e) {
                throw new Error("Runtime illegal access in synchronized collection removeIf fall-back.", e);
            }
        }
        try {
            synchronized (field.get(collection)) {
                removeIf = Collection.EL.removeIf((java.util.Collection) f679d.get(collection), predicate);
            }
            return removeIf;
        } catch (IllegalAccessException e2) {
            throw new Error("Runtime illegal access in synchronized collection removeIf.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m688e(List list, UnaryOperator unaryOperator) {
        Field field = f678c;
        if (field == null) {
            try {
                List list2 = (List) f679d.get(list);
                if (list2 instanceof List) {
                    ((List) list2).replaceAll(unaryOperator);
                    return;
                } else {
                    List.CC.$default$replaceAll(list2, unaryOperator);
                    return;
                }
            } catch (IllegalAccessException e) {
                throw new Error("Runtime illegal access in synchronized list replaceAll fall-back.", e);
            }
        }
        try {
            synchronized (field.get(list)) {
                java.util.List list3 = (java.util.List) f679d.get(list);
                if (list3 instanceof List) {
                    ((List) list3).replaceAll(unaryOperator);
                } else {
                    List.CC.$default$replaceAll(list3, unaryOperator);
                }
            }
        } catch (IllegalAccessException e2) {
            throw new Error("Runtime illegal access in synchronized list replaceAll.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m687f(java.util.List list, Comparator comparator) {
        Field field = f678c;
        if (field == null) {
            try {
                AbstractC2843k.m588r((java.util.List) f679d.get(list), comparator);
                return;
            } catch (IllegalAccessException e) {
                throw new Error("Runtime illegal access in synchronized collection sort fall-back.", e);
            }
        }
        try {
            synchronized (field.get(list)) {
                AbstractC2843k.m588r((java.util.List) f679d.get(list), comparator);
            }
        } catch (IllegalAccessException e2) {
            throw new Error("Runtime illegal access in synchronized list sort.", e2);
        }
    }

    public static <K, V> java.util.Map<K, V> synchronizedMap(java.util.Map<K, V> map) {
        return new C2771a(map);
    }
}
