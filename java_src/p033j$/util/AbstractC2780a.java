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
    public static void m610a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m609b(InterfaceC2853s.InterfaceC2854a interfaceC2854a, Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            interfaceC2854a.mo132e((InterfaceC2820f) consumer);
        } else if (AbstractC2779K.f649a) {
            AbstractC2779K.m612a(interfaceC2854a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2854a.mo132e(new C2845l(consumer));
        }
    }

    /* renamed from: c */
    public static void m608c(InterfaceC2853s.InterfaceC2855b interfaceC2855b, Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            interfaceC2855b.mo125c((InterfaceC2826l) consumer);
        } else if (AbstractC2779K.f649a) {
            AbstractC2779K.m612a(interfaceC2855b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2855b.mo125c(new C2847n(consumer));
        }
    }

    /* renamed from: d */
    public static void m607d(InterfaceC2853s.InterfaceC2856c interfaceC2856c, Consumer consumer) {
        if (consumer instanceof InterfaceC2831q) {
            interfaceC2856c.mo119d((InterfaceC2831q) consumer);
        } else if (AbstractC2779K.f649a) {
            AbstractC2779K.m612a(interfaceC2856c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2856c.mo119d(new C2850p(consumer));
        }
    }

    /* renamed from: e */
    public static long m606e(InterfaceC2853s interfaceC2853s) {
        if ((interfaceC2853s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2853s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m605f(InterfaceC2853s interfaceC2853s, int i) {
        return (interfaceC2853s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m604g(Collection collection) {
        return AbstractC3090o1.m335y(Collection$EL.m634b(collection), true);
    }

    /* renamed from: h */
    public static boolean m603h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f620a.isInstance(collection)) {
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
        return AbstractC3090o1.m335y(Collection$EL.m634b(collection), false);
    }

    /* renamed from: j */
    public static boolean m601j(InterfaceC2853s.InterfaceC2854a interfaceC2854a, Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            return interfaceC2854a.mo131k((InterfaceC2820f) consumer);
        }
        if (AbstractC2779K.f649a) {
            AbstractC2779K.m612a(interfaceC2854a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2854a.mo131k(new C2845l(consumer));
    }

    /* renamed from: k */
    public static boolean m600k(InterfaceC2853s.InterfaceC2855b interfaceC2855b, Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            return interfaceC2855b.mo124g((InterfaceC2826l) consumer);
        }
        if (AbstractC2779K.f649a) {
            AbstractC2779K.m612a(interfaceC2855b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2855b.mo124g(new C2847n(consumer));
    }

    /* renamed from: l */
    public static boolean m599l(InterfaceC2853s.InterfaceC2856c interfaceC2856c, Consumer consumer) {
        if (consumer instanceof InterfaceC2831q) {
            return interfaceC2856c.mo118i((InterfaceC2831q) consumer);
        }
        if (AbstractC2779K.f649a) {
            AbstractC2779K.m612a(interfaceC2856c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2856c.mo118i(new C2850p(consumer));
    }

    /* renamed from: m */
    public static Optional m598m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m611of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2842i m597n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2842i.m532d(optionalDouble.getAsDouble()) : C2842i.m535a();
    }

    /* renamed from: o */
    public static C2843j m596o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2843j.m528d(optionalInt.getAsInt()) : C2843j.m531a();
    }

    /* renamed from: p */
    public static C2844k m595p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2844k.m524d(optionalLong.getAsLong()) : C2844k.m527a();
    }

    /* renamed from: q */
    public static Optional m594q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m593r(C2842i c2842i) {
        if (c2842i == null) {
            return null;
        }
        return c2842i.m533c() ? OptionalDouble.of(c2842i.m534b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m592s(C2843j c2843j) {
        if (c2843j == null) {
            return null;
        }
        return c2843j.m529c() ? OptionalInt.of(c2843j.m530b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m591t(C2844k c2844k) {
        if (c2844k == null) {
            return null;
        }
        return c2844k.m525c() ? OptionalLong.of(c2844k.m526b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m590u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m589v(List list, Comparator comparator) {
        if (DesugarCollections.f621b.isInstance(list)) {
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
