package p035j$.util;

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
import p035j$.util.Comparator;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.function.Predicate;
import p035j$.util.stream.AbstractC2938o1;
import p035j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2628a {
    /* renamed from: a */
    public static void m620a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m619b(InterfaceC2701s.InterfaceC2702a interfaceC2702a, Consumer consumer) {
        if (consumer instanceof InterfaceC2668f) {
            interfaceC2702a.mo141e((InterfaceC2668f) consumer);
        } else if (AbstractC2627K.f569a) {
            AbstractC2627K.m622a(interfaceC2702a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2702a.mo141e(new C2693l(consumer));
        }
    }

    /* renamed from: c */
    public static void m618c(InterfaceC2701s.InterfaceC2703b interfaceC2703b, Consumer consumer) {
        if (consumer instanceof InterfaceC2674l) {
            interfaceC2703b.mo134c((InterfaceC2674l) consumer);
        } else if (AbstractC2627K.f569a) {
            AbstractC2627K.m622a(interfaceC2703b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2703b.mo134c(new C2695n(consumer));
        }
    }

    /* renamed from: d */
    public static void m617d(InterfaceC2701s.InterfaceC2704c interfaceC2704c, Consumer consumer) {
        if (consumer instanceof InterfaceC2679q) {
            interfaceC2704c.mo128d((InterfaceC2679q) consumer);
        } else if (AbstractC2627K.f569a) {
            AbstractC2627K.m622a(interfaceC2704c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2704c.mo128d(new C2698p(consumer));
        }
    }

    /* renamed from: e */
    public static long m616e(InterfaceC2701s interfaceC2701s) {
        if ((interfaceC2701s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2701s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m615f(InterfaceC2701s interfaceC2701s, int i) {
        return (interfaceC2701s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m614g(Collection collection) {
        return AbstractC2938o1.m344y(Collection$EL.m643b(collection), true);
    }

    /* renamed from: h */
    public static boolean m613h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f540a.isInstance(collection)) {
            return DesugarCollections.m639c(collection, predicate);
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
    public static Stream m612i(Collection collection) {
        return AbstractC2938o1.m344y(Collection$EL.m643b(collection), false);
    }

    /* renamed from: j */
    public static boolean m611j(InterfaceC2701s.InterfaceC2702a interfaceC2702a, Consumer consumer) {
        if (consumer instanceof InterfaceC2668f) {
            return interfaceC2702a.mo140k((InterfaceC2668f) consumer);
        }
        if (AbstractC2627K.f569a) {
            AbstractC2627K.m622a(interfaceC2702a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2702a.mo140k(new C2693l(consumer));
    }

    /* renamed from: k */
    public static boolean m610k(InterfaceC2701s.InterfaceC2703b interfaceC2703b, Consumer consumer) {
        if (consumer instanceof InterfaceC2674l) {
            return interfaceC2703b.mo133g((InterfaceC2674l) consumer);
        }
        if (AbstractC2627K.f569a) {
            AbstractC2627K.m622a(interfaceC2703b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2703b.mo133g(new C2695n(consumer));
    }

    /* renamed from: l */
    public static boolean m609l(InterfaceC2701s.InterfaceC2704c interfaceC2704c, Consumer consumer) {
        if (consumer instanceof InterfaceC2679q) {
            return interfaceC2704c.mo127i((InterfaceC2679q) consumer);
        }
        if (AbstractC2627K.f569a) {
            AbstractC2627K.m622a(interfaceC2704c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2704c.mo127i(new C2698p(consumer));
    }

    /* renamed from: m */
    public static Optional m608m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m621of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2690i m607n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2690i.m541d(optionalDouble.getAsDouble()) : C2690i.m544a();
    }

    /* renamed from: o */
    public static C2691j m606o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2691j.m537d(optionalInt.getAsInt()) : C2691j.m540a();
    }

    /* renamed from: p */
    public static C2692k m605p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2692k.m533d(optionalLong.getAsLong()) : C2692k.m536a();
    }

    /* renamed from: q */
    public static Optional m604q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m603r(C2690i c2690i) {
        if (c2690i == null) {
            return null;
        }
        return c2690i.m542c() ? OptionalDouble.of(c2690i.m543b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m602s(C2691j c2691j) {
        if (c2691j == null) {
            return null;
        }
        return c2691j.m538c() ? OptionalInt.of(c2691j.m539b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m601t(C2692k c2692k) {
        if (c2692k == null) {
            return null;
        }
        return c2692k.m534c() ? OptionalLong.of(c2692k.m535b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m600u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m599v(List list, Comparator comparator) {
        if (DesugarCollections.f541b.isInstance(list)) {
            DesugarCollections.m638d(list, comparator);
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
    public static /* synthetic */ Comparator m598w(Comparator comparator, Comparator comparator2) {
        return comparator instanceof Comparator ? ((Comparator) comparator).thenComparing(comparator2) : Comparator.CC.$default$thenComparing(comparator, comparator2);
    }
}
