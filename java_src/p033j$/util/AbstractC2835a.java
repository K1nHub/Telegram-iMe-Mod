package p033j$.util;

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
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2886q;
import p033j$.util.function.Predicate;
import p033j$.util.stream.AbstractC3145o1;
import p033j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2835a {
    /* renamed from: a */
    public static void m628a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m627b(InterfaceC2908s.InterfaceC2909a interfaceC2909a, Consumer consumer) {
        if (consumer instanceof InterfaceC2875f) {
            interfaceC2909a.mo150e((InterfaceC2875f) consumer);
        } else if (AbstractC2834K.f653a) {
            AbstractC2834K.m630a(interfaceC2909a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2909a.mo150e(new C2900l(consumer));
        }
    }

    /* renamed from: c */
    public static void m626c(InterfaceC2908s.InterfaceC2910b interfaceC2910b, Consumer consumer) {
        if (consumer instanceof InterfaceC2881l) {
            interfaceC2910b.mo143c((InterfaceC2881l) consumer);
        } else if (AbstractC2834K.f653a) {
            AbstractC2834K.m630a(interfaceC2910b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2910b.mo143c(new C2902n(consumer));
        }
    }

    /* renamed from: d */
    public static void m625d(InterfaceC2908s.InterfaceC2911c interfaceC2911c, Consumer consumer) {
        if (consumer instanceof InterfaceC2886q) {
            interfaceC2911c.mo137d((InterfaceC2886q) consumer);
        } else if (AbstractC2834K.f653a) {
            AbstractC2834K.m630a(interfaceC2911c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2911c.mo137d(new C2905p(consumer));
        }
    }

    /* renamed from: e */
    public static long m624e(InterfaceC2908s interfaceC2908s) {
        if ((interfaceC2908s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2908s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m623f(InterfaceC2908s interfaceC2908s, int i) {
        return (interfaceC2908s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m622g(Collection collection) {
        return AbstractC3145o1.m353y(Collection$EL.m652b(collection), true);
    }

    /* renamed from: h */
    public static boolean m621h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f624a.isInstance(collection)) {
            return DesugarCollections.m647c(collection, predicate);
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
    public static Stream m620i(Collection collection) {
        return AbstractC3145o1.m353y(Collection$EL.m652b(collection), false);
    }

    /* renamed from: j */
    public static boolean m619j(InterfaceC2908s.InterfaceC2909a interfaceC2909a, Consumer consumer) {
        if (consumer instanceof InterfaceC2875f) {
            return interfaceC2909a.mo149k((InterfaceC2875f) consumer);
        }
        if (AbstractC2834K.f653a) {
            AbstractC2834K.m630a(interfaceC2909a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2909a.mo149k(new C2900l(consumer));
    }

    /* renamed from: k */
    public static boolean m618k(InterfaceC2908s.InterfaceC2910b interfaceC2910b, Consumer consumer) {
        if (consumer instanceof InterfaceC2881l) {
            return interfaceC2910b.mo142g((InterfaceC2881l) consumer);
        }
        if (AbstractC2834K.f653a) {
            AbstractC2834K.m630a(interfaceC2910b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2910b.mo142g(new C2902n(consumer));
    }

    /* renamed from: l */
    public static boolean m617l(InterfaceC2908s.InterfaceC2911c interfaceC2911c, Consumer consumer) {
        if (consumer instanceof InterfaceC2886q) {
            return interfaceC2911c.mo136i((InterfaceC2886q) consumer);
        }
        if (AbstractC2834K.f653a) {
            AbstractC2834K.m630a(interfaceC2911c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2911c.mo136i(new C2905p(consumer));
    }

    /* renamed from: m */
    public static Optional m616m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m629of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2897i m615n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2897i.m550d(optionalDouble.getAsDouble()) : C2897i.m553a();
    }

    /* renamed from: o */
    public static C2898j m614o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2898j.m546d(optionalInt.getAsInt()) : C2898j.m549a();
    }

    /* renamed from: p */
    public static C2899k m613p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2899k.m542d(optionalLong.getAsLong()) : C2899k.m545a();
    }

    /* renamed from: q */
    public static Optional m612q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m611r(C2897i c2897i) {
        if (c2897i == null) {
            return null;
        }
        return c2897i.m551c() ? OptionalDouble.of(c2897i.m552b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m610s(C2898j c2898j) {
        if (c2898j == null) {
            return null;
        }
        return c2898j.m547c() ? OptionalInt.of(c2898j.m548b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m609t(C2899k c2899k) {
        if (c2899k == null) {
            return null;
        }
        return c2899k.m543c() ? OptionalLong.of(c2899k.m544b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m608u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m607v(List list, Comparator comparator) {
        if (DesugarCollections.f625b.isInstance(list)) {
            DesugarCollections.m646d(list, comparator);
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
