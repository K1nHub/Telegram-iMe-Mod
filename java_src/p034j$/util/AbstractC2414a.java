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
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.function.Predicate;
import p034j$.util.stream.AbstractC2724o1;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2414a {
    /* renamed from: a */
    public static void m626a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m625b(InterfaceC2487s.InterfaceC2488a interfaceC2488a, Consumer consumer) {
        if (consumer instanceof InterfaceC2454f) {
            interfaceC2488a.mo147e((InterfaceC2454f) consumer);
        } else if (AbstractC2413K.f558a) {
            AbstractC2413K.m628a(interfaceC2488a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2488a.mo147e(new C2479l(consumer));
        }
    }

    /* renamed from: c */
    public static void m624c(InterfaceC2487s.InterfaceC2489b interfaceC2489b, Consumer consumer) {
        if (consumer instanceof InterfaceC2460l) {
            interfaceC2489b.mo140c((InterfaceC2460l) consumer);
        } else if (AbstractC2413K.f558a) {
            AbstractC2413K.m628a(interfaceC2489b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2489b.mo140c(new C2481n(consumer));
        }
    }

    /* renamed from: d */
    public static void m623d(InterfaceC2487s.InterfaceC2490c interfaceC2490c, Consumer consumer) {
        if (consumer instanceof InterfaceC2465q) {
            interfaceC2490c.mo134d((InterfaceC2465q) consumer);
        } else if (AbstractC2413K.f558a) {
            AbstractC2413K.m628a(interfaceC2490c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2490c.mo134d(new C2484p(consumer));
        }
    }

    /* renamed from: e */
    public static long m622e(InterfaceC2487s interfaceC2487s) {
        if ((interfaceC2487s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2487s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m621f(InterfaceC2487s interfaceC2487s, int i) {
        return (interfaceC2487s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m620g(Collection collection) {
        return AbstractC2724o1.m350y(Collection$EL.m649b(collection), true);
    }

    /* renamed from: h */
    public static boolean m619h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f529a.isInstance(collection)) {
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
        return AbstractC2724o1.m350y(Collection$EL.m649b(collection), false);
    }

    /* renamed from: j */
    public static boolean m617j(InterfaceC2487s.InterfaceC2488a interfaceC2488a, Consumer consumer) {
        if (consumer instanceof InterfaceC2454f) {
            return interfaceC2488a.mo146k((InterfaceC2454f) consumer);
        }
        if (AbstractC2413K.f558a) {
            AbstractC2413K.m628a(interfaceC2488a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2488a.mo146k(new C2479l(consumer));
    }

    /* renamed from: k */
    public static boolean m616k(InterfaceC2487s.InterfaceC2489b interfaceC2489b, Consumer consumer) {
        if (consumer instanceof InterfaceC2460l) {
            return interfaceC2489b.mo139g((InterfaceC2460l) consumer);
        }
        if (AbstractC2413K.f558a) {
            AbstractC2413K.m628a(interfaceC2489b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2489b.mo139g(new C2481n(consumer));
    }

    /* renamed from: l */
    public static boolean m615l(InterfaceC2487s.InterfaceC2490c interfaceC2490c, Consumer consumer) {
        if (consumer instanceof InterfaceC2465q) {
            return interfaceC2490c.mo133i((InterfaceC2465q) consumer);
        }
        if (AbstractC2413K.f558a) {
            AbstractC2413K.m628a(interfaceC2490c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2490c.mo133i(new C2484p(consumer));
    }

    /* renamed from: m */
    public static Optional m614m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m627of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2476i m613n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2476i.m547d(optionalDouble.getAsDouble()) : C2476i.m550a();
    }

    /* renamed from: o */
    public static C2477j m612o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2477j.m543d(optionalInt.getAsInt()) : C2477j.m546a();
    }

    /* renamed from: p */
    public static C2478k m611p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2478k.m539d(optionalLong.getAsLong()) : C2478k.m542a();
    }

    /* renamed from: q */
    public static Optional m610q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m609r(C2476i c2476i) {
        if (c2476i == null) {
            return null;
        }
        return c2476i.m548c() ? OptionalDouble.of(c2476i.m549b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m608s(C2477j c2477j) {
        if (c2477j == null) {
            return null;
        }
        return c2477j.m544c() ? OptionalInt.of(c2477j.m545b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m607t(C2478k c2478k) {
        if (c2478k == null) {
            return null;
        }
        return c2478k.m540c() ? OptionalLong.of(c2478k.m541b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m606u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m605v(List list, Comparator comparator) {
        if (DesugarCollections.f530b.isInstance(list)) {
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
