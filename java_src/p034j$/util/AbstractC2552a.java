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
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.function.Predicate;
import p034j$.util.stream.AbstractC2862o1;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2552a {
    /* renamed from: a */
    public static void m625a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m624b(InterfaceC2625s.InterfaceC2626a interfaceC2626a, Consumer consumer) {
        if (consumer instanceof InterfaceC2592f) {
            interfaceC2626a.mo146e((InterfaceC2592f) consumer);
        } else if (AbstractC2551K.f564a) {
            AbstractC2551K.m627a(interfaceC2626a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2626a.mo146e(new C2617l(consumer));
        }
    }

    /* renamed from: c */
    public static void m623c(InterfaceC2625s.InterfaceC2627b interfaceC2627b, Consumer consumer) {
        if (consumer instanceof InterfaceC2598l) {
            interfaceC2627b.mo139c((InterfaceC2598l) consumer);
        } else if (AbstractC2551K.f564a) {
            AbstractC2551K.m627a(interfaceC2627b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2627b.mo139c(new C2619n(consumer));
        }
    }

    /* renamed from: d */
    public static void m622d(InterfaceC2625s.InterfaceC2628c interfaceC2628c, Consumer consumer) {
        if (consumer instanceof InterfaceC2603q) {
            interfaceC2628c.mo133d((InterfaceC2603q) consumer);
        } else if (AbstractC2551K.f564a) {
            AbstractC2551K.m627a(interfaceC2628c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2628c.mo133d(new C2622p(consumer));
        }
    }

    /* renamed from: e */
    public static long m621e(InterfaceC2625s interfaceC2625s) {
        if ((interfaceC2625s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2625s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m620f(InterfaceC2625s interfaceC2625s, int i) {
        return (interfaceC2625s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m619g(Collection collection) {
        return AbstractC2862o1.m349y(Collection$EL.m648b(collection), true);
    }

    /* renamed from: h */
    public static boolean m618h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f535a.isInstance(collection)) {
            return DesugarCollections.m644c(collection, predicate);
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
    public static Stream m617i(Collection collection) {
        return AbstractC2862o1.m349y(Collection$EL.m648b(collection), false);
    }

    /* renamed from: j */
    public static boolean m616j(InterfaceC2625s.InterfaceC2626a interfaceC2626a, Consumer consumer) {
        if (consumer instanceof InterfaceC2592f) {
            return interfaceC2626a.mo145k((InterfaceC2592f) consumer);
        }
        if (AbstractC2551K.f564a) {
            AbstractC2551K.m627a(interfaceC2626a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2626a.mo145k(new C2617l(consumer));
    }

    /* renamed from: k */
    public static boolean m615k(InterfaceC2625s.InterfaceC2627b interfaceC2627b, Consumer consumer) {
        if (consumer instanceof InterfaceC2598l) {
            return interfaceC2627b.mo138g((InterfaceC2598l) consumer);
        }
        if (AbstractC2551K.f564a) {
            AbstractC2551K.m627a(interfaceC2627b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2627b.mo138g(new C2619n(consumer));
    }

    /* renamed from: l */
    public static boolean m614l(InterfaceC2625s.InterfaceC2628c interfaceC2628c, Consumer consumer) {
        if (consumer instanceof InterfaceC2603q) {
            return interfaceC2628c.mo132i((InterfaceC2603q) consumer);
        }
        if (AbstractC2551K.f564a) {
            AbstractC2551K.m627a(interfaceC2628c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2628c.mo132i(new C2622p(consumer));
    }

    /* renamed from: m */
    public static Optional m613m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m626of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2614i m612n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2614i.m546d(optionalDouble.getAsDouble()) : C2614i.m549a();
    }

    /* renamed from: o */
    public static C2615j m611o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2615j.m542d(optionalInt.getAsInt()) : C2615j.m545a();
    }

    /* renamed from: p */
    public static C2616k m610p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2616k.m538d(optionalLong.getAsLong()) : C2616k.m541a();
    }

    /* renamed from: q */
    public static Optional m609q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m608r(C2614i c2614i) {
        if (c2614i == null) {
            return null;
        }
        return c2614i.m547c() ? OptionalDouble.of(c2614i.m548b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m607s(C2615j c2615j) {
        if (c2615j == null) {
            return null;
        }
        return c2615j.m543c() ? OptionalInt.of(c2615j.m544b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m606t(C2616k c2616k) {
        if (c2616k == null) {
            return null;
        }
        return c2616k.m539c() ? OptionalLong.of(c2616k.m540b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m605u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m604v(List list, Comparator comparator) {
        if (DesugarCollections.f536b.isInstance(list)) {
            DesugarCollections.m643d(list, comparator);
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
    public static /* synthetic */ Comparator m603w(Comparator comparator, Comparator comparator2) {
        return comparator instanceof Comparator ? ((Comparator) comparator).thenComparing(comparator2) : Comparator.CC.$default$thenComparing(comparator, comparator2);
    }
}
