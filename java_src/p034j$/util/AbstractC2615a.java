package p034j$.util;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import p034j$.util.Comparator;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2666q;
import p034j$.util.function.Predicate;
import p034j$.util.stream.AbstractC2925o1;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2615a {
    /* renamed from: a */
    public static void m606a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m605b(InterfaceC2688s.InterfaceC2689a interfaceC2689a, Consumer consumer) {
        if (consumer instanceof InterfaceC2655f) {
            interfaceC2689a.mo127e((InterfaceC2655f) consumer);
        } else if (AbstractC2614K.f564a) {
            AbstractC2614K.m608a(interfaceC2689a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2689a.mo127e(new C2680l(consumer));
        }
    }

    /* renamed from: c */
    public static void m604c(InterfaceC2688s.InterfaceC2690b interfaceC2690b, Consumer consumer) {
        if (consumer instanceof InterfaceC2661l) {
            interfaceC2690b.mo120c((InterfaceC2661l) consumer);
        } else if (AbstractC2614K.f564a) {
            AbstractC2614K.m608a(interfaceC2690b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2690b.mo120c(new C2682n(consumer));
        }
    }

    /* renamed from: d */
    public static void m603d(InterfaceC2688s.InterfaceC2691c interfaceC2691c, Consumer consumer) {
        if (consumer instanceof InterfaceC2666q) {
            interfaceC2691c.mo114d((InterfaceC2666q) consumer);
        } else if (AbstractC2614K.f564a) {
            AbstractC2614K.m608a(interfaceC2691c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2691c.mo114d(new C2685p(consumer));
        }
    }

    /* renamed from: e */
    public static long m602e(InterfaceC2688s interfaceC2688s) {
        if ((interfaceC2688s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2688s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m601f(InterfaceC2688s interfaceC2688s, int i) {
        return (interfaceC2688s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m600g(Collection collection) {
        return AbstractC2925o1.m330y(Collection$EL.m629b(collection), true);
    }

    /* renamed from: h */
    public static boolean m599h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f535a.isInstance(collection)) {
            return DesugarCollections.m625c(collection, predicate);
        }
        Objects.requireNonNull(predicate);
        boolean z = false;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (predicate.test(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    /* renamed from: i */
    public static Stream m598i(Collection collection) {
        return AbstractC2925o1.m330y(Collection$EL.m629b(collection), false);
    }

    /* renamed from: j */
    public static boolean m597j(InterfaceC2688s.InterfaceC2689a interfaceC2689a, Consumer consumer) {
        if (consumer instanceof InterfaceC2655f) {
            return interfaceC2689a.mo126k((InterfaceC2655f) consumer);
        }
        if (AbstractC2614K.f564a) {
            AbstractC2614K.m608a(interfaceC2689a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2689a.mo126k(new C2680l(consumer));
    }

    /* renamed from: k */
    public static boolean m596k(InterfaceC2688s.InterfaceC2690b interfaceC2690b, Consumer consumer) {
        if (consumer instanceof InterfaceC2661l) {
            return interfaceC2690b.mo119g((InterfaceC2661l) consumer);
        }
        if (AbstractC2614K.f564a) {
            AbstractC2614K.m608a(interfaceC2690b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2690b.mo119g(new C2682n(consumer));
    }

    /* renamed from: l */
    public static boolean m595l(InterfaceC2688s.InterfaceC2691c interfaceC2691c, Consumer consumer) {
        if (consumer instanceof InterfaceC2666q) {
            return interfaceC2691c.mo113i((InterfaceC2666q) consumer);
        }
        if (AbstractC2614K.f564a) {
            AbstractC2614K.m608a(interfaceC2691c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2691c.mo113i(new C2685p(consumer));
    }

    /* renamed from: m */
    public static Optional m594m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m607of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2677i m593n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2677i.m527d(optionalDouble.getAsDouble()) : C2677i.m530a();
    }

    /* renamed from: o */
    public static C2678j m592o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2678j.m523d(optionalInt.getAsInt()) : C2678j.m526a();
    }

    /* renamed from: p */
    public static C2679k m591p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2679k.m519d(optionalLong.getAsLong()) : C2679k.m522a();
    }

    /* renamed from: q */
    public static Optional m590q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m589r(C2677i c2677i) {
        if (c2677i == null) {
            return null;
        }
        return c2677i.m528c() ? OptionalDouble.of(c2677i.m529b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m588s(C2678j c2678j) {
        if (c2678j == null) {
            return null;
        }
        return c2678j.m524c() ? OptionalInt.of(c2678j.m525b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m587t(C2679k c2679k) {
        if (c2679k == null) {
            return null;
        }
        return c2679k.m520c() ? OptionalLong.of(c2679k.m521b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m586u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m585v(List list, Comparator comparator) {
        if (DesugarCollections.f536b.isInstance(list)) {
            DesugarCollections.m624d(list, comparator);
            return;
        }
        Object[] array = list.toArray();
        Arrays.sort(array, comparator);
        ListIterator listIterator = list.listIterator();
        for (Object obj : array) {
            listIterator.next();
            listIterator.set(obj);
        }
    }

    /* renamed from: w */
    public static /* synthetic */ Comparator m584w(Comparator comparator, Comparator comparator2) {
        return comparator instanceof Comparator ? ((Comparator) comparator).thenComparing(comparator2) : Comparator.CC.$default$thenComparing(comparator, comparator2);
    }
}
