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
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.function.Predicate;
import p034j$.util.stream.AbstractC2964o1;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2654a {
    /* renamed from: a */
    public static void m610a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m609b(InterfaceC2727s.InterfaceC2728a interfaceC2728a, Consumer consumer) {
        if (consumer instanceof InterfaceC2694f) {
            interfaceC2728a.mo132e((InterfaceC2694f) consumer);
        } else if (AbstractC2653K.f567a) {
            AbstractC2653K.m612a(interfaceC2728a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2728a.mo132e(new C2719l(consumer));
        }
    }

    /* renamed from: c */
    public static void m608c(InterfaceC2727s.InterfaceC2729b interfaceC2729b, Consumer consumer) {
        if (consumer instanceof InterfaceC2700l) {
            interfaceC2729b.mo125c((InterfaceC2700l) consumer);
        } else if (AbstractC2653K.f567a) {
            AbstractC2653K.m612a(interfaceC2729b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2729b.mo125c(new C2721n(consumer));
        }
    }

    /* renamed from: d */
    public static void m607d(InterfaceC2727s.InterfaceC2730c interfaceC2730c, Consumer consumer) {
        if (consumer instanceof InterfaceC2705q) {
            interfaceC2730c.mo119d((InterfaceC2705q) consumer);
        } else if (AbstractC2653K.f567a) {
            AbstractC2653K.m612a(interfaceC2730c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2730c.mo119d(new C2724p(consumer));
        }
    }

    /* renamed from: e */
    public static long m606e(InterfaceC2727s interfaceC2727s) {
        if ((interfaceC2727s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2727s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m605f(InterfaceC2727s interfaceC2727s, int i) {
        return (interfaceC2727s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m604g(Collection collection) {
        return AbstractC2964o1.m335y(Collection$EL.m634b(collection), true);
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
        return AbstractC2964o1.m335y(Collection$EL.m634b(collection), false);
    }

    /* renamed from: j */
    public static boolean m601j(InterfaceC2727s.InterfaceC2728a interfaceC2728a, Consumer consumer) {
        if (consumer instanceof InterfaceC2694f) {
            return interfaceC2728a.mo131k((InterfaceC2694f) consumer);
        }
        if (AbstractC2653K.f567a) {
            AbstractC2653K.m612a(interfaceC2728a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2728a.mo131k(new C2719l(consumer));
    }

    /* renamed from: k */
    public static boolean m600k(InterfaceC2727s.InterfaceC2729b interfaceC2729b, Consumer consumer) {
        if (consumer instanceof InterfaceC2700l) {
            return interfaceC2729b.mo124g((InterfaceC2700l) consumer);
        }
        if (AbstractC2653K.f567a) {
            AbstractC2653K.m612a(interfaceC2729b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2729b.mo124g(new C2721n(consumer));
    }

    /* renamed from: l */
    public static boolean m599l(InterfaceC2727s.InterfaceC2730c interfaceC2730c, Consumer consumer) {
        if (consumer instanceof InterfaceC2705q) {
            return interfaceC2730c.mo118i((InterfaceC2705q) consumer);
        }
        if (AbstractC2653K.f567a) {
            AbstractC2653K.m612a(interfaceC2730c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2730c.mo118i(new C2724p(consumer));
    }

    /* renamed from: m */
    public static Optional m598m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m611of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2716i m597n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2716i.m532d(optionalDouble.getAsDouble()) : C2716i.m535a();
    }

    /* renamed from: o */
    public static C2717j m596o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2717j.m528d(optionalInt.getAsInt()) : C2717j.m531a();
    }

    /* renamed from: p */
    public static C2718k m595p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2718k.m524d(optionalLong.getAsLong()) : C2718k.m527a();
    }

    /* renamed from: q */
    public static Optional m594q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m593r(C2716i c2716i) {
        if (c2716i == null) {
            return null;
        }
        return c2716i.m533c() ? OptionalDouble.of(c2716i.m534b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m592s(C2717j c2717j) {
        if (c2717j == null) {
            return null;
        }
        return c2717j.m529c() ? OptionalInt.of(c2717j.m530b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m591t(C2718k c2718k) {
        if (c2718k == null) {
            return null;
        }
        return c2718k.m525c() ? OptionalLong.of(c2718k.m526b()) : OptionalLong.empty();
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
