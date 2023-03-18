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
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.function.Predicate;
import p034j$.util.stream.AbstractC2848o1;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2538a {
    /* renamed from: a */
    public static void m626a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m625b(InterfaceC2611s.InterfaceC2612a interfaceC2612a, Consumer consumer) {
        if (consumer instanceof InterfaceC2578f) {
            interfaceC2612a.mo147e((InterfaceC2578f) consumer);
        } else if (AbstractC2537K.f563a) {
            AbstractC2537K.m628a(interfaceC2612a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2612a.mo147e(new C2603l(consumer));
        }
    }

    /* renamed from: c */
    public static void m624c(InterfaceC2611s.InterfaceC2613b interfaceC2613b, Consumer consumer) {
        if (consumer instanceof InterfaceC2584l) {
            interfaceC2613b.mo140c((InterfaceC2584l) consumer);
        } else if (AbstractC2537K.f563a) {
            AbstractC2537K.m628a(interfaceC2613b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2613b.mo140c(new C2605n(consumer));
        }
    }

    /* renamed from: d */
    public static void m623d(InterfaceC2611s.InterfaceC2614c interfaceC2614c, Consumer consumer) {
        if (consumer instanceof InterfaceC2589q) {
            interfaceC2614c.mo134d((InterfaceC2589q) consumer);
        } else if (AbstractC2537K.f563a) {
            AbstractC2537K.m628a(interfaceC2614c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2614c.mo134d(new C2608p(consumer));
        }
    }

    /* renamed from: e */
    public static long m622e(InterfaceC2611s interfaceC2611s) {
        if ((interfaceC2611s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2611s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m621f(InterfaceC2611s interfaceC2611s, int i) {
        return (interfaceC2611s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m620g(Collection collection) {
        return AbstractC2848o1.m350y(Collection$EL.m649b(collection), true);
    }

    /* renamed from: h */
    public static boolean m619h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f534a.isInstance(collection)) {
            return DesugarCollections.m645c(collection, predicate);
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
    public static Stream m618i(Collection collection) {
        return AbstractC2848o1.m350y(Collection$EL.m649b(collection), false);
    }

    /* renamed from: j */
    public static boolean m617j(InterfaceC2611s.InterfaceC2612a interfaceC2612a, Consumer consumer) {
        if (consumer instanceof InterfaceC2578f) {
            return interfaceC2612a.mo146k((InterfaceC2578f) consumer);
        }
        if (AbstractC2537K.f563a) {
            AbstractC2537K.m628a(interfaceC2612a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2612a.mo146k(new C2603l(consumer));
    }

    /* renamed from: k */
    public static boolean m616k(InterfaceC2611s.InterfaceC2613b interfaceC2613b, Consumer consumer) {
        if (consumer instanceof InterfaceC2584l) {
            return interfaceC2613b.mo139g((InterfaceC2584l) consumer);
        }
        if (AbstractC2537K.f563a) {
            AbstractC2537K.m628a(interfaceC2613b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2613b.mo139g(new C2605n(consumer));
    }

    /* renamed from: l */
    public static boolean m615l(InterfaceC2611s.InterfaceC2614c interfaceC2614c, Consumer consumer) {
        if (consumer instanceof InterfaceC2589q) {
            return interfaceC2614c.mo133i((InterfaceC2589q) consumer);
        }
        if (AbstractC2537K.f563a) {
            AbstractC2537K.m628a(interfaceC2614c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2614c.mo133i(new C2608p(consumer));
    }

    /* renamed from: m */
    public static Optional m614m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m627of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2600i m613n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2600i.m547d(optionalDouble.getAsDouble()) : C2600i.m550a();
    }

    /* renamed from: o */
    public static C2601j m612o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2601j.m543d(optionalInt.getAsInt()) : C2601j.m546a();
    }

    /* renamed from: p */
    public static C2602k m611p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2602k.m539d(optionalLong.getAsLong()) : C2602k.m542a();
    }

    /* renamed from: q */
    public static Optional m610q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m609r(C2600i c2600i) {
        if (c2600i == null) {
            return null;
        }
        return c2600i.m548c() ? OptionalDouble.of(c2600i.m549b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m608s(C2601j c2601j) {
        if (c2601j == null) {
            return null;
        }
        return c2601j.m544c() ? OptionalInt.of(c2601j.m545b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m607t(C2602k c2602k) {
        if (c2602k == null) {
            return null;
        }
        return c2602k.m540c() ? OptionalLong.of(c2602k.m541b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m606u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m605v(List list, Comparator comparator) {
        if (DesugarCollections.f535b.isInstance(list)) {
            DesugarCollections.m644d(list, comparator);
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
    public static /* synthetic */ Comparator m604w(Comparator comparator, Comparator comparator2) {
        return comparator instanceof Comparator ? ((Comparator) comparator).thenComparing(comparator2) : Comparator.CC.$default$thenComparing(comparator, comparator2);
    }
}
