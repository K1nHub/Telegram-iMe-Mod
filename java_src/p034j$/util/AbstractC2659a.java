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
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.function.Predicate;
import p034j$.util.stream.AbstractC2969o1;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2659a {
    /* renamed from: a */
    public static void m610a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m609b(InterfaceC2732s.InterfaceC2733a interfaceC2733a, Consumer consumer) {
        if (consumer instanceof InterfaceC2699f) {
            interfaceC2733a.mo132e((InterfaceC2699f) consumer);
        } else if (AbstractC2658K.f567a) {
            AbstractC2658K.m612a(interfaceC2733a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2733a.mo132e(new C2724l(consumer));
        }
    }

    /* renamed from: c */
    public static void m608c(InterfaceC2732s.InterfaceC2734b interfaceC2734b, Consumer consumer) {
        if (consumer instanceof InterfaceC2705l) {
            interfaceC2734b.mo125c((InterfaceC2705l) consumer);
        } else if (AbstractC2658K.f567a) {
            AbstractC2658K.m612a(interfaceC2734b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2734b.mo125c(new C2726n(consumer));
        }
    }

    /* renamed from: d */
    public static void m607d(InterfaceC2732s.InterfaceC2735c interfaceC2735c, Consumer consumer) {
        if (consumer instanceof InterfaceC2710q) {
            interfaceC2735c.mo119d((InterfaceC2710q) consumer);
        } else if (AbstractC2658K.f567a) {
            AbstractC2658K.m612a(interfaceC2735c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2735c.mo119d(new C2729p(consumer));
        }
    }

    /* renamed from: e */
    public static long m606e(InterfaceC2732s interfaceC2732s) {
        if ((interfaceC2732s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2732s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m605f(InterfaceC2732s interfaceC2732s, int i) {
        return (interfaceC2732s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m604g(Collection collection) {
        return AbstractC2969o1.m335y(Collection$EL.m634b(collection), true);
    }

    /* renamed from: h */
    public static boolean m603h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f538a.isInstance(collection)) {
            return DesugarCollections.m629c(collection, predicate);
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
    public static Stream m602i(Collection collection) {
        return AbstractC2969o1.m335y(Collection$EL.m634b(collection), false);
    }

    /* renamed from: j */
    public static boolean m601j(InterfaceC2732s.InterfaceC2733a interfaceC2733a, Consumer consumer) {
        if (consumer instanceof InterfaceC2699f) {
            return interfaceC2733a.mo131k((InterfaceC2699f) consumer);
        }
        if (AbstractC2658K.f567a) {
            AbstractC2658K.m612a(interfaceC2733a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2733a.mo131k(new C2724l(consumer));
    }

    /* renamed from: k */
    public static boolean m600k(InterfaceC2732s.InterfaceC2734b interfaceC2734b, Consumer consumer) {
        if (consumer instanceof InterfaceC2705l) {
            return interfaceC2734b.mo124g((InterfaceC2705l) consumer);
        }
        if (AbstractC2658K.f567a) {
            AbstractC2658K.m612a(interfaceC2734b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2734b.mo124g(new C2726n(consumer));
    }

    /* renamed from: l */
    public static boolean m599l(InterfaceC2732s.InterfaceC2735c interfaceC2735c, Consumer consumer) {
        if (consumer instanceof InterfaceC2710q) {
            return interfaceC2735c.mo118i((InterfaceC2710q) consumer);
        }
        if (AbstractC2658K.f567a) {
            AbstractC2658K.m612a(interfaceC2735c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2735c.mo118i(new C2729p(consumer));
    }

    /* renamed from: m */
    public static Optional m598m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m611of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2721i m597n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2721i.m532d(optionalDouble.getAsDouble()) : C2721i.m535a();
    }

    /* renamed from: o */
    public static C2722j m596o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2722j.m528d(optionalInt.getAsInt()) : C2722j.m531a();
    }

    /* renamed from: p */
    public static C2723k m595p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2723k.m524d(optionalLong.getAsLong()) : C2723k.m527a();
    }

    /* renamed from: q */
    public static Optional m594q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m593r(C2721i c2721i) {
        if (c2721i == null) {
            return null;
        }
        return c2721i.m533c() ? OptionalDouble.of(c2721i.m534b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m592s(C2722j c2722j) {
        if (c2722j == null) {
            return null;
        }
        return c2722j.m529c() ? OptionalInt.of(c2722j.m530b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m591t(C2723k c2723k) {
        if (c2723k == null) {
            return null;
        }
        return c2723k.m525c() ? OptionalLong.of(c2723k.m526b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m590u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m589v(List list, Comparator comparator) {
        if (DesugarCollections.f539b.isInstance(list)) {
            DesugarCollections.m628d(list, comparator);
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
}
