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
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.Predicate;
import p033j$.util.stream.AbstractC3090o1;
import p033j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2780a {
    /* renamed from: a */
    public static void m628a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m627b(InterfaceC2853s.InterfaceC2854a interfaceC2854a, Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            interfaceC2854a.mo150e((InterfaceC2820f) consumer);
        } else if (AbstractC2779K.f652a) {
            AbstractC2779K.m630a(interfaceC2854a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2854a.mo150e(new C2845l(consumer));
        }
    }

    /* renamed from: c */
    public static void m626c(InterfaceC2853s.InterfaceC2855b interfaceC2855b, Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            interfaceC2855b.mo143c((InterfaceC2826l) consumer);
        } else if (AbstractC2779K.f652a) {
            AbstractC2779K.m630a(interfaceC2855b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2855b.mo143c(new C2847n(consumer));
        }
    }

    /* renamed from: d */
    public static void m625d(InterfaceC2853s.InterfaceC2856c interfaceC2856c, Consumer consumer) {
        if (consumer instanceof InterfaceC2831q) {
            interfaceC2856c.mo137d((InterfaceC2831q) consumer);
        } else if (AbstractC2779K.f652a) {
            AbstractC2779K.m630a(interfaceC2856c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2856c.mo137d(new C2850p(consumer));
        }
    }

    /* renamed from: e */
    public static long m624e(InterfaceC2853s interfaceC2853s) {
        if ((interfaceC2853s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2853s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m623f(InterfaceC2853s interfaceC2853s, int i) {
        return (interfaceC2853s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m622g(Collection collection) {
        return AbstractC3090o1.m353y(Collection$EL.m652b(collection), true);
    }

    /* renamed from: h */
    public static boolean m621h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f623a.isInstance(collection)) {
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
        return AbstractC3090o1.m353y(Collection$EL.m652b(collection), false);
    }

    /* renamed from: j */
    public static boolean m619j(InterfaceC2853s.InterfaceC2854a interfaceC2854a, Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            return interfaceC2854a.mo149k((InterfaceC2820f) consumer);
        }
        if (AbstractC2779K.f652a) {
            AbstractC2779K.m630a(interfaceC2854a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2854a.mo149k(new C2845l(consumer));
    }

    /* renamed from: k */
    public static boolean m618k(InterfaceC2853s.InterfaceC2855b interfaceC2855b, Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            return interfaceC2855b.mo142g((InterfaceC2826l) consumer);
        }
        if (AbstractC2779K.f652a) {
            AbstractC2779K.m630a(interfaceC2855b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2855b.mo142g(new C2847n(consumer));
    }

    /* renamed from: l */
    public static boolean m617l(InterfaceC2853s.InterfaceC2856c interfaceC2856c, Consumer consumer) {
        if (consumer instanceof InterfaceC2831q) {
            return interfaceC2856c.mo136i((InterfaceC2831q) consumer);
        }
        if (AbstractC2779K.f652a) {
            AbstractC2779K.m630a(interfaceC2856c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2856c.mo136i(new C2850p(consumer));
    }

    /* renamed from: m */
    public static Optional m616m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m629of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2842i m615n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2842i.m550d(optionalDouble.getAsDouble()) : C2842i.m553a();
    }

    /* renamed from: o */
    public static C2843j m614o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2843j.m546d(optionalInt.getAsInt()) : C2843j.m549a();
    }

    /* renamed from: p */
    public static C2844k m613p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2844k.m542d(optionalLong.getAsLong()) : C2844k.m545a();
    }

    /* renamed from: q */
    public static Optional m612q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m611r(C2842i c2842i) {
        if (c2842i == null) {
            return null;
        }
        return c2842i.m551c() ? OptionalDouble.of(c2842i.m552b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m610s(C2843j c2843j) {
        if (c2843j == null) {
            return null;
        }
        return c2843j.m547c() ? OptionalInt.of(c2843j.m548b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m609t(C2844k c2844k) {
        if (c2844k == null) {
            return null;
        }
        return c2844k.m543c() ? OptionalLong.of(c2844k.m544b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m608u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m607v(List list, Comparator comparator) {
        if (DesugarCollections.f624b.isInstance(list)) {
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
